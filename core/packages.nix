{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    alsa-utils
    btop-rocm
    dig
    fastfetch
    git
    home-manager
    lm_sensors
    tmux
    unzip
    wget
  ];
}
