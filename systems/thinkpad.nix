{
  imports = [
    ../core/desktop
    ../modules/hardware/tv.nix
  ];

  networking.hostName = "thinkpad";

  services.thinkfan = {
    enable = true;
    levels = [
      [2 0 255]
    ];
  };
}
