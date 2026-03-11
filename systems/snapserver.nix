{
  imports = [
    ../core/server
    ../modules/server/dns.nix
    ../modules/server/snapcast/server.nix
  ];

  gc.deleteOlderThan = "7d";

  networking.hostName = "snapserver";
}
