{ config, lib, ... }:

{
  options.firefox = {
    textScaling = lib.mkOption {
      type = lib.types.float;
      default = -1;
      description = "Firefox text scaling factor";
    };
  };

  config = {
    home-manager.users.luke.programs.firefox.profiles.default.settings = {
      "layout.css.devPixelsPerPx" = config.firefox.textScaling;
    };
  };
}
