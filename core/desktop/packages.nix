{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    beeper
    chromium
    exiftool
    ffmpeg
    firefox
    fragments
    dconf-editor
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    helvum
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
