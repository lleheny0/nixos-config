{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    beeper
    discord
    exiftool
    fragments
    gimp
    libva-utils
    radeontop
    signal-desktop-bin
    spotify
    vlc
    vscode
  ];
}
