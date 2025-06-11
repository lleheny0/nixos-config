{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    exiftool
    fragments
    gimp
    libva-utils
    radeontop
    vlc
  ];
}
