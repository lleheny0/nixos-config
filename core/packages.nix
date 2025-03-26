{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    alsa-utils
    btop
    git
    home-manager
    lm_sensors
    neofetch
    tmux
    unzip
    vim
    wget
  ];
}
