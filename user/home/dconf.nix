{ config, pkgs, ... }:

{
  home-manager.users.luke.dconf.settings = {
    "org/gnome/Console" = {
      "audible-bell" = false;
      "visual-bell" = false;
    };
    "org/gnome/desktop/interface" = {
      "color-scheme" = "prefer-dark";
      "document-font-name" = "FreeSans 11";
      "gtk-theme" = "Adwaita-dark";
      "font-name" = "FreeSans 11";
      "monospace-font-name" = "Fantasque Sans Mono Bold 11";
    };
    "org/gnome/desktop/sound" = {
      "event-sounds" = false;
    };
    "org/gnome/desktop/wm/preferences" = {
      "button-layout" = "appmenu:minimize,maximize,close";
      "mouse-button-modifier" = "<Alt>";
      "resize-with-right-button" = true;
    };
    "org/gnome/mutter" = {
      "center-new-windows" = true;
    };
  };
}