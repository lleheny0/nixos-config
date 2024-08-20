{
  imports = [
    ../core/desktop
    ../modules/no-audio-powersave.nix
    ../modules/tv.nix
  ];

  networking.hostName = "chromebox";
}
