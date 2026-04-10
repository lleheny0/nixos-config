{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    alsa-utils
    btop-rocm
    dig
    fastfetch
    git
    home-manager
    imagemagick
    lm_sensors
    smartmontools
    tmux
    unzip
    wget
  ];
}
