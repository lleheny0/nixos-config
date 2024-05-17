{ config, pkgs, ... }:

{
  home-manager.users.luke.programs.git = {
    enable = true;
    userEmail = "luke.leheny@pm.me";
    userName = "Luke Leheny";
  };
}
