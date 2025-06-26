{ pkgs, ... }:

{
  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/Console" = {
        audible-bell = false;
        visual-bell = false;
      };
      "org/gnome/desktop/background" = {
        color-shading-type = "solid";
        picture-options = "zoom";
        picture-uri = "/home/luke/Pictures/wallpaper.jpg";
        picture-uri-dark = "/home/luke/Pictures/wallpaper.jpg";
      };
      "org/gnome/desktop/interface" = {
        clock-format = "12h";
        clock-show-date = true;
        clock-show-seconds = false;
        clock-show-weekday = true;
        color-scheme = "prefer-dark";
        document-font-name = "FreeSans 11";
        font-name = "FreeSans 11";
        # "gtk-theme" = "Adwaita-dark";
        enable-hot-corners = false;
        monospace-font-name = "JetBrains Mono Bold 10";
        show-battery-percentage = true;
        text-scaling-factor = lib.mkDefault 1.0;
      };
      "org/gnome/desktop/notifications" = {
        show-banners = false;
        show-in-lock-screen = false;
      };
      "org/gnome/desktop/peripherals/mouse" = {
        accel-profile = lib.mkDefault "flat";
        natural-scroll = lib.mkDefault false;
      };
      "org/gnome/desktop/peripherals/touchpad" = {
        tap-to-click = false;
      };
      "org/gnome/desktop/search-providers" = {
        disabled = [
          "org.gnome.Characters.desktop"
          "org.gnome.clocks.desktop"
          "org.gnome.Epiphany.desktop"
        ];
      };
      "org/gnome/desktop/screen-time-limits" = {
        daily-limit-enabled = false;
        history-enabled = false;
      };
      "org/gnome/desktop/screensaver" = {
        color-shading-type = "solid";
        picture-options = "zoom";
        picture-uri = "/home/luke/Pictures/wallpaper.jpg";
        picture-uri-dark = "/home/luke/Pictures/wallpaper.jpg";
      };
      "org/gnome/desktop/session" = {
        idle-delay = lib.mkDefault (lib.hm.gvariant.mkUint32 900);
      };
      "org/gnome/desktop/sound" = {
        allow-volume-above-100-percent = true;
        event-sounds = false;
      };
      "org/gnome/desktop/wm/keybindings" = {
        cycle-group = [];
        cycle-group-backward = [];
        switch-applications = [];
        switch-applications-backward = [];
        switch-group = ["<Super>Tab"];
        switch-group-backward = ["<Super>grave"];
        switch-windows = ["<Alt>Tab"];
        switch-windows-backward = ["<Alt>grave"];
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
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-enabled = true;
        night-light-last-coordinates = lib.hm.gvariant.mkTuple([
          41.8240
          (-71.4128)
        ]);
        night-light-schedule-automatic = true;
        night-light-temperature = lib.mkDefault (lib.hm.gvariant.mkUint32 3000);
      };
      "org/gnome/settings-daemon/plugins/media-keys" = {
        logout = [];
        shutdown = ["<Control><Alt>Delete"];
      };
      "org/gnome/settings-daemon/plugins/power" = {
        power-button-action = "interactive";
        sleep-inactive-ac-type = "nothing";
      };
      "org/gnome/shell" = {
        disable-user-extensions = false;
        disabled-extensions = [
        ];
        enabled-extensions = [
          "appindicatorsupport@rgcjonas.gmail.com"
          "dash-to-dock@micxgx.gmail.com"
        ];
        favorite-apps = [
          "firefox.desktop"
          "Alacritty.desktop"
          "org.gnome.Nautilus.desktop"
          "signal.desktop"
          "discord.desktop"
          "spotify.desktop"
          "code.desktop"
          "steam.desktop"
          "org.prismlauncher.PrismLauncher.desktop"
          "slippi.desktop"
          "info.cemu.Cemu.desktop"
          "org.pipewire.Helvum.desktop"
          "com.obsproject.Studio.desktop"
        ];
      };
      "org/gnome/shell/app-switcher" = {
        current-workspace-only = false;
      };
      "org/gnome/shell/window-switcher" = {
        current-workspace-only = false;
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
        intellihide = true;
        intellihide-mode = "ALL_WINDOWS";
        multi-monitor = true;
        require-pressure-to-show = false;
        running-indicator-style = "DOTS";
        scroll-action = "cycle-windows";
        shift-click-action = "launch";
        show-delay = 0.0001;
        show-dock-urgent-notify = false;
        show-mounts-network = true;
        show-show-apps-button = false;
        show-trash = false;
        transparency-mode = "DEFAULT";
      };
      "org/gnome/system/location" = {
        enabled = true;
      };
      "org/gnome/TextEditor" = {
        highlight-current-line = true;
        restore-session = false;
        show-grid = false;
        style-scheme = "Adwaita-dark";
      };
      "org/gtk/settings/file-chooser" = {
        clock-format = "12h";
      };
    };

    home.file."Pictures/wallpaper.jpg".source = ./wallpaper.jpg;
  };
}
