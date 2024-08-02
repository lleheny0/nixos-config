{
  home-manager.users.luke.programs.firefox.profiles.default.settings = {
    "mousewheel.default.delta_multiplier_y" = 25;
  };

  services.keyd.keyboards.default.settings.main = {
    fn = "layer(aux)";
    leftmeta = "layer(alt)";
    leftalt = "layer(meta)";
  };
}
