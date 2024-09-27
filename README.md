# Installing from scratch

## 1. Add necessary channels and update

```sh
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --add https://github.com/NixOS/nixos-hardware/archive/master.tar.gz nixos-hardware
sudo nix-channel --update
```

## 2. Generate SSH key

```sh
ssh-keygen -t ed25519 -C "luke.leheny@pm.me"
ssh-add /home/luke/.ssh/id_ed25519
cat /home/luke/.ssh/id_ed25519.pub
```

[Add it to Github](https://github.com/settings/ssh/new)

## 3. Install vim and git in a temp shell

```sh
nix-shell -p vim git
```

## 4. Clone repository

```sh
cd
mkdir Projects
cd Projects
git clone git@github.com:lleheny0/nixos-config.git
```

## 5. Relocate harware-configuration.nix

```sh
sudo mv /etc/nixos/hardware-configuration.nix /home/luke/Projects/nixos-config/
```

## 6. Create symlink to configuration.nix

```sh
sudo rm /etc/nixos/configuration.nix
sudo ln -s /home/luke/Projects/nixos-config/configuration.nix /etc/nixos/configuration.nix
```

## 7. Import system

```sh
vim configuration.nix
```

Replace the line

```nix
# Import system here
```

with something like

```nix
./systems/desktop.nix
```

## 8. Rebuild

```sh
rm /home/luke/.mozilla -rf
sudo nixos-rebuild boot
```

(Home Manager will throw an error if the .mozilla folder already exists)
