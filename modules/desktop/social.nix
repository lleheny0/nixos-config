{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    beeper
    signal-desktop
  ];
}
