{
  imports = [
    ../core/server
    ../modules/server/snapcast/client.nix
  ];

  gc.deleteOlderThan = "7d";

  snapclient = {
    asUser = false;
    params = "--soundcard 2";
  };

  networking.hostName = "kitchen";
}
