#!/bin/bash

# Check if server
while true; do
  read -p "Server? (y/n) " isServer
  case $isServer in
    [YyNn]* )
      break
      ;;
    * )
      echo "Please answer y/n."
      ;;
  esac
done

# Setup wireless if server
if [[ $isServer == [Yy]* ]]; then
  nmtui
fi

# Add channels and update
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --update

# Generate SSH key
ssh-keygen -t ed25519 -C "luke.leheny@pm.me"
eval "$(ssh-agent -s)"
ssh-add /home/luke/.ssh/id_ed25519
cat /home/luke/.ssh/id_ed25519.pub

# Prompt user to add SSH key to GitHub
echo "Add SSH key to GitHub: https://github.com/settings/ssh/new"
read -n 1 -r -s -p "Press any key to continue..."
echo

# Install vim and git in temp shell
nix-shell -p vim git

# Clone repo
cd /home/luke
mkdir Projects
cd Projects
git clone git@github.com:lleheny0/nixos-config.git

# Relocate hardware-configuration.nix
sudo mv /etc/nixos/hardware-configuration.nix /home/luke/Projects/nixos-config/

# Create symlink to configuration.nix
sudo rm /etc/nixos/configuration.nix
sudo ln -s /home/luke/Projects/nixos-config/configuration.nix /etc/nixos/configuration.nix

# Import system
vim /home/luke/Projects/nixos-config/configuration.nix

# Tell git to ignore changes to configuration.nix
cd /home/luke/Projects/nixos-config
git update-index --assume-unchanged configuration.nix

# Add authorized key if server
if [[ $isServer == [Yy]* ]]; then
  vim /home/luke/.ssh/authorized_keys
fi

# Remove .mozilla folder if desktop
if [[ $isServer == [Nn]* ]]; then
  rm /home/luke/.mozilla -rf
fi

# Rebuild
sudo nixos-rebuild boot
