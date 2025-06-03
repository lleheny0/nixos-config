{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    beeper
    discord
    signal-desktop
  ];
}
