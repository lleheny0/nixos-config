{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    dconf-editor
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
  ];
}
