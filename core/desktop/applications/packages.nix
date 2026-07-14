{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    android-tools
    deluge
    exiftool
    eyedropper
    libva-utils
    radeontop
    texliveSmall
    vlc
    xeyes
  ];
}
