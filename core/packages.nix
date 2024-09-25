{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    alsa-utils
    btop
    exiftool
    git
    home-manager
    lm_sensors
    vim
  ];
}
