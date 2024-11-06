{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    amberol
    beeper
    chromium
    exiftool
    ffmpeg
    firefox
    fragments
    g4music
    dconf-editor
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.vitals
    helvum
    mullvad-vpn
    obs-studio
    obs-studio-plugins.obs-vaapi
    openzone-cursors
    pavucontrol
    signal-desktop
    spotify
    texliveFull
    vlc
    vscode
    webcord
  ];
}
