{ pkgs, ... }:

{
  imports = [
    ../../core/desktop
    ../../modules/desktop/social.nix
    ../../modules/development/javascript.nix
    ../../modules/hardware/ecotank.nix
  ];

  dconf = {
    experimentalFeatures = [ "scale-monitor-framebuffer" ];
    nightLightTemperature = 2700;
  };

  firefox.scrollSpeed = 50;

  networking.networkmanager.wifi.powersave = false;

  networking.hostName = "laptop";
}
