# Installing from scratch

## 1. Switch to unstable
```bash
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
sudo nix-channel --update
```

## 2. Add Home Manager
```bash
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --update
```

## 3. Clone repository
```bash
git clone git@github.com:lleheny0/nixos-config.git
```

## 4. Move harware-configuration.nix to repo directory
```bash
sudo mv /etc/nixos/hardware-configuration [repo_location]/
```

## 5. Create symlink to repo's configuration.nix
```bash
sudo rm /etc/nixos/configuration.nix
sudo ln -s [repo_location]/configuration.nix /etc/nixos/configuration.nix
```
