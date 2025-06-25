{
  imports = [
    ../core/server
    ../modules/server/snapcast/client.nix
  ];

  snapclient = {
    asUser = false;
    params = "--soundcard 2";
    predelay = 60;
  };

  networking.hostName = "kitchen";
}
