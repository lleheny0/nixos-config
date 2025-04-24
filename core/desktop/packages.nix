{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    chromium
    discord
    exiftool
    firefox
    fragments
    dconf-editor
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
