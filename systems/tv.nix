{
  imports = [
    ../core/desktop
    ../core/server/ssh.nix
    ../modules/hardware/ignore-lid.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/server/snapcast/client.nix
  ];

  dconf = {
    idleDelay = 0;
    mouseAccelProfile = "default";
    mouseNaturalScroll = true;
    nightLightTemperature = 4000;
  };

  firefox.scrollSpeed = 200;

  gc.deleteOlderThan = "7d";

  networking.hostName = "tv";
}
