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
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    libva-utils
    openzone-cursors
    radeontop
    signal-desktop
    spotify
    # texliveFull
    vlc
    vscode
  ];
}
