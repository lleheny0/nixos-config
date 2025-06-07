{ config, lib, ... }:

{
  options.firefox = {
    scrollSpeed = lib.mkOption {
      type = lib.types.int;
      default = 400;
      description = "Firefox scroll speed multiplier";
    };
  };

  config = {
    home-manager.users.luke.programs.firefox.profiles.default.settings = {
      "mousewheel.default.delta_multiplier_x" = config.firefox.scrollSpeed;
      "mousewheel.default.delta_multiplier_y" = config.firefox.scrollSpeed;
    };
  };
}
