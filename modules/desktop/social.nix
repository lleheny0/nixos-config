{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    discord
    signal-desktop
  ];
}
