{
  imports = [
    ../core/desktop
    ../core/server/ssh.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/hardware/no-audio-powersave.nix
    ../modules/hardware/tv.nix
    (import ../modules/server/snapclient.nix { asUser = true; })
  ];

  networking.hostName = "optiplex";
}
