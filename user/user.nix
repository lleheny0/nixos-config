{ config, pkgs, ... }:

{
  imports = [ ./home ];

  users.users.luke = {
    isNormalUser = true;
    description = "Luke";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      gnome.dconf-editor
      gnome3.gnome-tweaks
      home-manager
      obs-studio
      vim
      vscode
    ];
  };
}