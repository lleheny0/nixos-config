{
  imports = [
    ../core/desktop
    ../modules/desktop/audio-video.nix
    ../modules/desktop/gaming
    ../modules/desktop/social.nix
    ../modules/development/javascript.nix
    ../modules/hardware/ecotank.nix
    ../modules/hardware/marble.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/server/snapcast/client.nix
  ];

  networking.hostName = "desktop";
}
