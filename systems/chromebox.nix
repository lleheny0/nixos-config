{
  imports = [
    ../core/server
    ../modules/hardware/no-audio-powersave.nix
    ../modules/server/snapclient.nix
  ];

  networking.hostName = "chromebox";
}
