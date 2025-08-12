{
  imports = [
    ../core/server
    ../modules/server/snapcast/server.nix
  ];

  networking.hostName = "snapserver";
}
