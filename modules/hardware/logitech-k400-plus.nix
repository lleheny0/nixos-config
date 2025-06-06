{
  home-manager.users.luke.programs.firefox.profiles.default.settings = {
    "mousewheel.default.delta_multiplier_x" = 200;
    "mousewheel.default.delta_multiplier_y" = 200;
  };

  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "default";
      natural-scroll = true;
    };
  };
}
