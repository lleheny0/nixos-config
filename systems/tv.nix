{
  imports = [
    ../core/desktop
    ../core/server/ssh.nix
    ../modules/desktop/uxplay.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/hardware/no-audio-powersave.nix
    ../modules/hardware/tv.nix
    ../modules/server/snapcast/client.nix
  ];

  snapclient.predelay = 120;

  networking.hostName = "tv";
}
