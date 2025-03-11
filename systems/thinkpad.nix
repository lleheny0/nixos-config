{
  imports = [
    ../core/desktop
    ../modules/hardware/tv.nix
  ];

  networking.hostName = "thinkpad";

  services.thinkfan = {
    enable = true;
    levels = [
      [0 0 45]
      [2 45 100]
      [7 100 255]
    ];
  };
}
