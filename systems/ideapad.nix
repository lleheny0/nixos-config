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

  vscode.fontSize = 17.0;

  networking.hostName = "ideapad";
}
