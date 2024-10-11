{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    beeper
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
    mpv
    mullvad-vpn
    obs-studio
    obs-studio-plugins.obs-vaapi
    openzone-cursors
    pavucontrol
    signal-desktop
    spotify
    texliveFull
    vscode
    webcord
  ];
}
