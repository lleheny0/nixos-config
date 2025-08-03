{
  imports = [
    ../core/server
    ../modules/server/snapcast/client.nix
  ];

  snapclient = {
    asUser = false;
    params = "--soundcard 2";
  };

  networking.hostName = "kitchen";
}
