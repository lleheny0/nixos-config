{
  imports = [
    ../core/desktop
    ../modules/desktop/multimedia.nix
    ../modules/desktop/gaming
    ../modules/desktop/social.nix
    ../modules/desktop/work.nix
    ../modules/development/javascript.nix
    ../modules/hardware/ecotank.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/server/snapcast/client.nix
  ];

  networking.hostName = "desktop";
}
