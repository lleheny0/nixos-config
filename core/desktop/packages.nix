{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    audacity
    beeper
    chromium
    discord
    exiftool
    ffmpeg
    firefox
    fragments
    dconf-editor
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    helvum
    mullvad-vpn
    obs-studio
    obs-studio-plugins.obs-vaapi
    openzone-cursors
    pavucontrol
    signal-desktop
    spotify
    # texliveFull
    vlc
    vscode
  ];
}
