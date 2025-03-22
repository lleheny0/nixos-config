{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    alsa-utils
    btop
    busybox
    git
    home-manager
    lm_sensors
    tmux
    unzip
    vim
    wget
  ];
}
