{ config, pkgs, ... }:

{
  imports = [ ./home ];

  users.users.luke = {
    isNormalUser = true;
    description = "Luke";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      adwaita-qt
      chromium
      firefox
      git
      gnome.dconf-editor
      gnome3.gnome-tweaks
      gnomeExtensions.appindicator
      gnomeExtensions.dash-to-dock
      helvum
      home-manager
      obs-studio
      openzone-cursors
      prismlauncher
      spotify
      vim
      vscode
    ];
  };
}
