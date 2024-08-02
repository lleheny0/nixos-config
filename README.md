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

## 3. Create private.nix
```bash
touch private.nix
```
(This will eventually be automatic but I'm too busy to learn more Nix right now)
