{
  imports = [
    ../core/desktop
    ../modules/hardware/no-audio-powersave.nix
    ../modules/hardware/tv.nix
  ];

  networking.hostName = "chromebox";
}
