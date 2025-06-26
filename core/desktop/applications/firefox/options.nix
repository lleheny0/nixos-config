{ config, lib, ... }:

{
  options.firefox = {
    scrollSpeed = lib.mkOption {
      type = lib.types.int;
      default = 400;
      description = "Scroll speed multiplier";
    };
    textScaling = lib.mkOption {
      type = lib.types.float;
      default = -1.0;
      description = "Text scaling factor";
    };
  };

  config = {
    home-manager.users.luke.programs.firefox.profiles.default.settings = {
      "layout.css.devPixelsPerPx" = config.firefox.textScaling;
      "mousewheel.default.delta_multiplier_x" = config.firefox.scrollSpeed;
      "mousewheel.default.delta_multiplier_y" = config.firefox.scrollSpeed;
    };
  };
}
