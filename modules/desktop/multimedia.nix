{ pkgs, ... }:

{
  imports = [
    ./obs.nix
  ];

  users.users.luke.packages = with pkgs; [
    audacity
    ffmpeg
    gimp
    helvum
    pavucontrol
    vgmplay-libvgm
  ];
}
