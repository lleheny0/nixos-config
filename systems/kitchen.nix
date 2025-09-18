{
  imports = [
    ../core/server
    ../modules/server/snapcast/client.nix
  ];

  gc.deleteOlderThan = "7d";

  snapclient = {
    asUser = false;
    params = "--Soundcard 2";
  };

  networking.hostName = "kitchen";
}
