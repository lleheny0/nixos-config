# Installing from scratch

## 1. CLI preparation

```sh
nmtui
nano /home/luke/Projects/nixos-config/configuration.nix
sudo nixos-rebuild switch
```

Add the line

```nix
services.openssh.enable = true;
```

```sh
sudo nixos-rebuild switch
```

## 2. Connect via SSH from desktop

## 3. Download install script

```sh
cd
curl -O https://raw.githubusercontent.com/lleheny0/nixos-config/main/install.sh
nix-shell -p vim git --run './install.sh'
```
