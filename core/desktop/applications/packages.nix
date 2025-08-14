{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    exiftool
    eyedropper
    fragments
    libva-utils
    radeontop
    texlive.combined.scheme-small
    vlc
  ];
}
