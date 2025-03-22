{ pkgs, ... }:

{
  imports = [
    ./cemu.nix
    ./minecraft-client.nix
    ./slippi.nix
    ./steam.nix
  ];

  users.users.luke.packages = with pkgs; [
    goverlay
    mangohud
  ];

  home-manager.users.luke.home.file.".config/MangoHud/MangoHud.conf".source = ./dotfiles/MangoHud.conf;
}
