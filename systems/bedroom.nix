{
  imports = [
    ../core/server
    ../modules/hardware/ignore-lid.nix
    ../modules/server/snapcast/client.nix
  ];

  snapclient = {
    asUser = false;
    params = "--soundcard 2 --latency 25";
  };

  services.thinkfan = {
    enable = true;
    levels = [
      [1 0 255]
    ];
  };

  networking.hostName = "bedroom";
}
