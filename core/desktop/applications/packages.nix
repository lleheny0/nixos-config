{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    exiftool
    fragments
    gimp
    libva-utils
    radeontop
    texlive.combined.scheme-small
    vlc
  ];
}
