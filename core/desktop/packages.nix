{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    firefox
    g4music
    dconf-editor
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    helvum
    mpv
    mullvad-vpn
    obs-studio
    obs-studio-plugins.obs-vaapi
    openzone-cursors
    pavucontrol
    signal-desktop
    spotify
    vscode
    webcord
  ];
}
