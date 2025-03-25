{
  imports = [
    ../core/server
    ../modules/hardware/ignore-lid.nix
    ../modules/server/minecraft-server.nix
    ../modules/server/vgm-radio.nix
  ];

  networking.hostName = "thinkpad";

  services.thinkfan = {
    enable = true;
    levels = [
      [1 0 255]
    ];
  };
}
