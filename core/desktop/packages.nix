{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    beeper
    dconf-editor
    discord
    exiftool
    fragments
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
