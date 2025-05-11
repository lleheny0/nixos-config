{
  imports = [
    ../core/server
    ../modules/hardware/ignore-lid.nix
  ];

  networking.hostName = "thinkpad";

  services.thinkfan = {
    enable = true;
    levels = [
      [1 0 255]
    ];
  };
}
