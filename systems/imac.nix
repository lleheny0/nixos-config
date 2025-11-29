{ pkgs, ... }:

{
  imports = [
    ../core/desktop
    ../modules/hardware/multi-monitor.nix
  ];

  networking.hostName = "imac";
}
