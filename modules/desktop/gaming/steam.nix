{ pkgs, ... }:

{
  programs.steam.enable = true;

  users.users.luke.packages = with pkgs; [
    protonup-ng
  ];
}
