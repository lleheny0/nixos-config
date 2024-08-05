# Installing from scratch

## 1. Add necessary channels and update
```bash
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --add https://github.com/NixOS/nixos-hardware/archive/master.tar.gz nixos-hardware
sudo nix-channel
```

## 2. Clone repository
```bash
git clone git@github.com:lleheny0/nixos-config.git
```

## 3. Move harware-configuration.nix to repo directory
```bash
sudo mv /etc/nixos/hardware-configuration [repo_location]/
```

## 4. Create symlink to repo's configuration.nix
```bash
sudo rm /etc/nixos/configuration.nix
sudo ln -s [repo_location]/configuration.nix /etc/nixos/configuration.nix
```
