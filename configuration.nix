{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    # Import system here
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "23.11";
}
