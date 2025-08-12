{
  imports = [
    ../core/server
    ../modules/server/snapcast/server.nix
  ];

  gc.deleteOlderThan = "7d";

  networking.hostName = "snapserver";
}
