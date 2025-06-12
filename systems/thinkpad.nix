{
  imports = [
    ../core/server
    ../modules/hardware/ignore-lid.nix
    ../modules/server/snapcast/server.nix
  ];

  networking.hostName = "thinkpad";

  services.thinkfan = {
    enable = true;
    levels = [
      [1 0 255]
    ];
  };
}
