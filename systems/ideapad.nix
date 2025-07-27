{ pkgs, ... }:

{
  imports = [
    ../core/desktop
    ../modules/desktop/social.nix
    ../modules/development/javascript.nix
    ../modules/hardware/ecotank.nix
  ];

  dconf.nightLightTemperature = 2700;

  firefox = {
    scrollSpeed = 50;
    textScaling = 1.25;
  };

  vscode.zoomLevel = 1;

  networking.hostName = "ideapad";
}
