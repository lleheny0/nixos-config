# Installing from scratch

## 1. Add necessary channels and update

```bash
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --add https://github.com/NixOS/nixos-hardware/archive/master.tar.gz nixos-hardware
sudo nix-channel --update
```

## 2. Generate SSH key

```sh
ssh-keygen -t ed25519 -C "luke.leheny@pm.me"
ssh-add ~/.ssh/id_ed25519
```

[Add it to Github](https://github.com/settings/ssh/new)

## 3. Clone repository

```bash
cd
mkdir Projects
cd Projects
git clone git@github.com:lleheny0/nixos-config.git
```

## 4. Relocate harware-configuration.nix

```bash
sudo mv /etc/nixos/hardware-configuration /home/luke/Projects/nixos-config/
```

## 5. Create symlink to configuration.nix

```bash
sudo rm /etc/nixos/configuration.nix
sudo ln -s /home/luke/Projects/nixos-config/configuration.nix /etc/nixos/configuration.nix
```
