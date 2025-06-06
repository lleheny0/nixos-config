{
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };

  home-manager.users.luke.dconf.settings = {
    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };
    "org/gnome/nautilus/list-view" = {
      default-zoom-level = "small";
    };
    "org/gnome/nautilus/preferences" = {
      date-time-format = "detailed";
      default-folder-viewer = "icon-view";
    };
  };
}
