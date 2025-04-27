{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    beeper
    chromium
    discord
    exiftool
    firefox
    fragments
    dconf-editor
    gimp
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    libva-utils
    radeontop
    signal-desktop-bin
    spotify
    vlc
    vscode
  ];
}
