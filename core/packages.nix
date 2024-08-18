{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    btop
    git
    home-manager
    lm_sensors
    vim
  ];
}
