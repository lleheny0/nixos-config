{ pkgs, ... }:

{
  imports = [
    ../core/desktop
    ../modules/desktop/social.nix
    ../modules/development/javascript.nix
    ../modules/hardware/ecotank.nix
  ];

  dconf.nightLightTemperature = 2700;

  firefox.scrollSpeed = 50;

  networking.hostName = "ideapad";
}
