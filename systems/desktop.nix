{
  imports = [
    ../core/desktop
    ../modules/desktop/gaming.nix
    ../modules/hardware/multi-monitor.nix
  ];

  networking.hostName = "desktop";
}
