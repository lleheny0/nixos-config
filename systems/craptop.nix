{
  imports = [
    ../core/server
    ../modules/ignore-lid.nix
    ../modules/minecraft-server.nix
    ../modules/vgm-radio.nix
  ];

  networking.hostName = "craptop";
}
