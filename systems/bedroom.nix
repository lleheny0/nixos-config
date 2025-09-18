{
  imports = [
    ../core/server
    ../modules/server/snapcast/client.nix
  ];

  snapclient = {
    asUser = false;
    params = "--Soundcard 2 --Latency 25";
  };

  services.thinkfan = {
    enable = true;
    levels = [
      [1 0 255]
    ];
  };

  networking.hostName = "bedroom";
}
