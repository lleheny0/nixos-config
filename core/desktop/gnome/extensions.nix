{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs.gnomeExtensions; [
    appindicator
    dash-to-dock
  ];

  home-manager.users.luke.dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [];
      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "dash-to-dock@micxgx.gmail.com"
      ];
    };
    "org/gnome/shell/extensions/appindicator" = {
      icon-opacity = 255;
      icon-saturation = 1.0;
      icon-size = 22;
    };
    "org/gnome/shell/extensions/dash-to-dock" = {
      animation-time = 0.1;
      apply-custom-theme = false;
      autohide-in-fullscreen = false;
      background-color = "rgb(0,0,0)";
      click-action = "focus-minimize-or-previews";
      custom-background-color = true;
      customize-alphas = true;
      disable-overview-on-startup = true;
      dock-fixed = false;
      hide-delay = 0.0001;
      hotkeys-show-dock = false;
      intellihide = false;
      multi-monitor = true;
      require-pressure-to-show = false;
      running-indicator-style = "DOTS";
      running-indicator-dominant-color = true;
      scroll-action = "cycle-windows";
      shift-click-action = "launch";
      show-delay = 0.0001;
      show-dock-urgent-notify = false;
      show-mounts-network = true;
      show-show-apps-button = false;
      show-trash = false;
      transparency-mode = "DEFAULT";
    };
  };
}
