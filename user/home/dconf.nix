{
  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/Console" = {
        audible-bell = false;
        visual-bell = false;
      };
      "org/gnome/desktop/interface" = {
        clock-format = "12h";
        clock-show-date = true;
        clock-show-seconds = false;
        clock-show-weekday = true;
        color-scheme = "prefer-dark";
        cursor-theme = "OpenZone_Black";
        document-font-name = "FreeSans 11";
        font-name = "FreeSans 11";
        # "gtk-theme" = "Adwaita-dark";
        enable-hot-corners = false;
        monospace-font-name = "Iosevka Bold 12";
      };
      "org/gnome/desktop/notifications" = {
        show-banners = false;
        show-in-lock-screen = false;
      };
      "org/gnome/desktop/peripherals/mouse" = {
        accel-profile = "flat";
      };
      "org/gnome/desktop/privacy" = {
        remember-recent-files = false;
        remove-old-temp-files = true;
        remove-old-trash-files = true;
      };
      "org/gnome/desktop/session" = {
        idle-delay = lib.hm.gvariant.mkUint32 900;
      };
      "org/gnome/desktop/sound" = {
        event-sounds = false;
      };
      "org/gnome/desktop/wm/preferences" = {
        button-layout = "appmenu:minimize,maximize,close";
        mouse-button-modifier = "<Super>";
        resize-with-right-button = true;
      };
      "org/gnome/mutter" = {
        center-new-windows = true;
        dynamic-workspaces = true;
        edge-tiling = true;
        workspaces-only-on-primary = true;
      };
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
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-enabled = true;
        night-light-schedule-automatic = true;
        night-light-temperature = lib.hm.gvariant.mkUint32 3000;
      };
      "org/gnome/settings-daemon/plugins/power" = {
        power-button-action = "interactive";
        sleep-inactive-ac-type = "nothing";
      };
      "org/gnome/shell" = {
        disable-user-extensions = false;
        disabled-extensions = [];
        enabled-extensions = [
          "appindicatorsupport@rgcjonas.gmail.com"
          "dash-to-dock@micxgx.gmail.com"
          "drive-menu@gnome-shell-extensions.gcampax.github.com"
          "places-menu@gnome-shell-extensions.gcampax.github.com"
          "apps-menu@gnome-shell-extensions.gcampax.github.com"
        ];
        favorite-apps = [
          "firefox.desktop"
          "org.gnome.Nautilus.desktop"
          "org.gnome.Console.desktop"
          "signal-desktop.desktop"
          "webcord.desktop"
          "spotify.desktop"
          "code.desktop"
          "steam.desktop"
          "org.prismlauncher.PrismLauncher.desktop"
          "info.cemu.Cemu.desktop"
          "com.obsproject.Studio.desktop"
        ];
      };
      "org/gnome/shell/extensions/appindicator" = {
        icon-opacity = 255;
        icon-saturation = 1.0;
        icon-size = 22;
      };
      "org/gnome/shell/extensions/dash-to-dock" = {
        animation-time = 0.1;
        background-color = "rgb(0,0,0)";
        click-action = "focus-minimize-or-previews";
        custom-background-color = true;
        customize-alphas = true;
        disable-overview-on-startup = true;
        hotkeys-show-dock = false;
        intellihide = false;
        multi-monitor = false;
        require-pressure-to-show = false;
        scroll-action = "cycle-windows";
        shift-click-action = "launch";
        show-mounts-network = true;
        show-show-apps-button = false;
        show-trash = false;
        transparency-mode = "DEFAULT";
      };
      "org/gtk/settings/file-chooser" = {
        clock-format = "12h";
      };
    };
  };
}
