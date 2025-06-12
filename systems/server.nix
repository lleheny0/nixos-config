{
  imports = [
    ../core/server
    ../modules/hardware/ignore-lid.nix
    ../modules/server/minecraft
    ../modules/server/vgm-radio
  ];

  networking.hostName = "server";
}
