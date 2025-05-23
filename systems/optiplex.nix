{
  imports = [
    ../core/desktop
    ../core/server/ssh.nix
    ../modules/hardware/no-audio-powersave.nix
    ../modules/hardware/tv.nix
  ];

  networking.hostName = "optiplex";
}
