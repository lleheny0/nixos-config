{ pkgs, lib, ... }:

{
  home-manager.users.luke = {
    home.pointerCursor = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
      size = 24;
      gtk.enable = true;
      x11.enable = true;
    };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = lib.mkDefault "Adwaita";
      };
    };
  };
}
