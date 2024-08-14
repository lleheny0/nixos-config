{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./systems
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "unstable";
}
