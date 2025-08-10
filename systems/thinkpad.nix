{
  imports = [
    ../core/server
    ../modules/hardware/ignore-lid.nix
    ../modules/server/snapcast/server.nix
  ];

  boot.kernelParams = [ "usbcore.autosuspend=-1" ];

  services.thinkfan = {
    enable = true;
    levels = [
      [1 0 255]
    ];
  };

  networking.hostName = "thinkpad";
}
