{ pkgs, ... }:

{
  imports = [
    ./obs.nix
  ];

  users.users.luke.packages = with pkgs; [
    audacity
    crosspipe
    ffmpeg
    gimp
    pavucontrol
    # vgmplay-libvgm
  ];
}
