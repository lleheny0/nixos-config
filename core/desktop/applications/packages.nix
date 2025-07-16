{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    exiftool
    fragments
    libva-utils
    radeontop
    texlive.combined.scheme-small
    vlc
  ];
}
