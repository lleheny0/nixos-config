{ pkgs, lib, ... }:

{
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };

  environment.variables.GST_PLUGIN_SYSTEM_PATH_1_0 = lib.makeSearchPathOutput "lib" "lib/gstreamer-1.0" [
    pkgs.gst_all_1.gst-plugins-base
    pkgs.gst_all_1.gst-plugins-good
    pkgs.gst_all_1.gst-plugins-bad
    pkgs.gst_all_1.gst-plugins-ugly
  ];

  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/privacy" = {
      remember-recent-files = false;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };
    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };
    "org/gnome/nautilus/list-view" = {
      default-column-order = [
        "name"
        "date_modified"
        "detailed_type"
        "size"
      ];
      default-visible-columns = [
        "name"
        "date_modified"
        "detailed_type"
        "size"
      ];
      default-zoom-level = "small";
    };
    "org/gnome/nautilus/preferences" = {
      date-time-format = "detailed";
      default-folder-viewer = "list-view";
    };
  };
}
