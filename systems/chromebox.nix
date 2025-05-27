{
  imports = [
    ../core/server
    ../modules/desktop/snapclient.nix
    ../modules/hardware/no-audio-powersave.nix
  ];

  networking.hostName = "chromebox";
}
