{
  imports = [
    ../core/server
    ../modules/hardware/ignore-lid.nix
    ../modules/server/minecraft-server.nix
    ../modules/server/vgm-radio.nix
  ];

  networking.hostName = "craptop";
}
