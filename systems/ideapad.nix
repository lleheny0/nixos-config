{ pkgs, ... }:

{
  imports = [
    ../core/desktop
    ../modules/desktop/social.nix
    ../modules/hardware/ecotank.nix
  ];

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-temperature = lib.hm.gvariant.mkUint32 2700;
      };
    };
  };

  firefox = {
    scrollSpeed = 50;
    textScaling = 1.25;
  };

  networking.hostName = "ideapad";
}
