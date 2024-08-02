{
  home-manager.users.luke = {
    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = "OpenZone_Black";
      };
    };
    programs.firefox.profiles.default.settings = {
      "mousewheel.default.delta_multiplier_y" = 100;
    };
  };

  services.keyd.keyboards.default.settings.main = {
    leftcontrol = "layer(aux)";
  };
}
