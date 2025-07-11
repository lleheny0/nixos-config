# Installing from scratch

## 1. Connect to network

On servers, run:

```sh
nmtui
```

## 2. Add necessary channels and update

```sh
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --update
```

## 3. Generate SSH key

```sh
ssh-keygen -t ed25519 -C "luke.leheny@pm.me"
eval "$(ssh-agent -s)"
ssh-add /home/luke/.ssh/id_ed25519
cat /home/luke/.ssh/id_ed25519.pub
```

[Add it to Github](https://github.com/settings/ssh/new)

## 4. Install vim and git in a temp shell

```sh
nix-shell -p vim git
```

## 5. Clone repository

```sh
cd /home/luke
mkdir Projects
cd Projects
git clone git@github.com:lleheny0/nixos-config.git
```

## 6. Relocate harware-configuration.nix

```sh
sudo mv /etc/nixos/hardware-configuration.nix /home/luke/Projects/nixos-config/
```

## 7. Create symlink to configuration.nix

```sh
sudo rm /etc/nixos/configuration.nix
sudo ln -s /home/luke/Projects/nixos-config/configuration.nix /etc/nixos/configuration.nix
```

## 8. Import system

```sh
vim /home/luke/Projects/nixos-config/configuration.nix
```

Replace the line

```nix
# Import system here
```

with something like

```nix
./systems/desktop.nix
```

## 9. Tell git to ignore changes to configuration.nix

```sh
cd /home/luke/Projects/nixos-config
git update-index --assume-unchanged configuration.nix
```

## 10. (Server Only) Add authorized key

```sh
vim /home/luke/.ssh/authorized_keys
```

Paste in SSH public key from local machine

## 11. (Desktop Only) Wipe .mozilla folder

```sh
rm /home/luke/.mozilla -rf
```

## 12. Rebuild

```sh
sudo nixos-rebuild boot
```
