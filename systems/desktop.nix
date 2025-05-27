{
  imports = [
    ../core/desktop
    ../modules/desktop/audio-video.nix
    ../modules/desktop/gaming
    ../modules/desktop/snapclient.nix
    ../modules/development/javascript.nix
    ../modules/hardware/multi-monitor.nix
  ];

  networking.hostName = "desktop";
}
