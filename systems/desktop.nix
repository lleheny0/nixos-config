{
  imports = [
    ../core/desktop
    ../modules/desktop/audio-video.nix
    ../modules/desktop/gaming
    ../modules/development/javascript.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/server/snapclient.nix
  ];

  networking.hostName = "desktop";
}
