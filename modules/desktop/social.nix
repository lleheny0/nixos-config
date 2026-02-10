{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    signal-desktop
  ];
}
