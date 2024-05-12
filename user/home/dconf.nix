{ config, pkgs, ... }:

{
  home-manager.users.luke.dconf.settings = {
    "org/gnome/Console" = {
      "audible-bell" = false;
      "visual-bell" = false;
    };
    "org/gnome/desktop/interface" = {
      "clock-format" = "12h";
      "color-scheme" = "prefer-dark";
      "cursor-theme" = "OpenZone_Black";
      "document-font-name" = "FreeSans 11";
      "font-name" = "FreeSans 11";
      # "gtk-theme" = "Adwaita-dark";
      "enable-hot-corners" = false;
      "monospace-font-name" = "Fantasque Sans Mono Bold 12";
    };
    "org/gnome/desktop/notifications" = {
      "show-banners" = false;
      "show-in-lock-screen" = false;
    };
    "org/gnome/desktop/peripherals/mouse" = {
      "accel-profile" = "flat";
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
      "dynamic-workspaces" = true;
      "workspaces-only-on-primary" = true;
    };
    "org/gnome/nautilus/icon-view" = {
      "default-zoom-level" = "small-plus";
    };
    "org/gnome/nautilus/list-view" = {
      "default-zoom-level" = "small";
      "use-tree-view" = true;
    };
    "org/gnome/nautilus/preferences" = {
      "default-folder-viewer" = "icon-view";
    };
    "org/gnome/settings-daemon/plugins/color" = {
      "night-light-enabled" = true;
      "night-light-schedule-automatic" = true;
      "night-light-temperature" = "uint32 2700";
    };
    "org/gnome/settings-daemon/plugins/power" = {
      "power-button-action" = "interactive";
      "sleep-inactive-ac-type" = "nothing";
    };
  };
}