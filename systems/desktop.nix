{
  imports = [
    ../core/desktop
    ../modules/desktop/gaming.nix
    ../modules/development/javascript.nix
    ../modules/hardware/multi-monitor.nix
  ];

  networking.hostName = "desktop";
}
