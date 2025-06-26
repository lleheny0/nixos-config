{ config, lib, ... }:

{
  options.dconf = {
    idleDelay = lib.mkOption {
      type = lib.types.int;
      default = 900;
      description = "Idle delay before screen lock";
    };
    mouseAccelProfile = lib.mkOption {
      type = lib.types.str;
      default = "flat";
      description = "Mouse acceleration profile";
    };
    mouseNaturalScroll = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Natural scrolling";
    };
    nightLightTemperature = lib.mkOption {
      type = lib.types.int;
      default = 3000;
      description = "Color temperature for night light";
    };
  };

  config = {
    home-manager.users.luke = { lib, ... }: {
      dconf.settings = {
        "org/gnome/desktop/peripherals/mouse" = {
          accel-profile = config.dconf.mouseAccelProfile;
          natural-scroll = config.dconf.mouseNaturalScroll;
        };
        "org/gnome/desktop/session" = {
          idle-delay = lib.hm.gvariant.mkUint32 config.dconf.idleDelay;
        };
        "org/gnome/settings-daemon/plugins/color" = {
          night-light-temperature = lib.hm.gvariant.mkUint32 config.dconf.nightLightTemperature;
        };
      };
    };
  };
}
