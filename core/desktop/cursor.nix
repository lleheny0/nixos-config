{ pkgs, lib, ... }:

let
  name = "Adwaita";
  package = pkgs.adwaita-icon-theme;
in {
  home-manager.users.luke = {
    home.pointerCursor = {
      name = name;
      package = package;
      size = 24;
      gtk.enable = true;
      x11.enable = true;
    };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = lib.mkDefault name;
      };
    };
  };
}
