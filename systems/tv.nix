{
  imports = [
    ../core/desktop
    ../core/server/ssh.nix
    ../modules/desktop/uxplay.nix
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

  snapclient.predelay = 60;

  networking.hostName = "tv";
}
