{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    deluge
    exiftool
    eyedropper
    libva-utils
    radeontop
    texlive.combined.scheme-small
    vlc
    xeyes
  ];
}
