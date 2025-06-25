{
  imports = [
    ../core/desktop
    ../core/server/ssh.nix
    ../modules/desktop/uxplay.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/hardware/tv.nix
    ../modules/server/snapcast/client.nix
  ];

  snapclient.predelay = 60;

  networking.hostName = "tv";
}
