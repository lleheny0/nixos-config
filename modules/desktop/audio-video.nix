{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    audacity
    ffmpeg
    helvum
    obs-studio
    obs-studio-plugins.obs-vaapi
    pavucontrol
    vgmplay-libvgm
  ];
}
