{
  imports = [
    ../core/desktop
    ../modules/hardware/logitech-k400-plus.nix
    ../modules/hardware/tv.nix
  ];

  networking.hostName = "chromebox";
}
