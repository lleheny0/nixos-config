{ config, lib, pkgs, ... }:

{
  options.dconf = {
    idleDelay = lib.mkOption {
      type = lib.types.int;
      default = 900;
      description = "Idle delay before screen lock";
    };
    mouseAccelProfile = lib.mkOption {
      type = lib.types.str;
      default = "flat";
      description = "Mouse acceleration profile";
    };
    mouseNaturalScroll = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Natural scrolling";
    };
    nightLightTemperature = lib.mkOption {
      type = lib.types.int;
      default = 3000;
      description = "Color temperature for night light";
    };
  };

  config.home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/Console" = {
        audible-bell = false;
        visual-bell = false;
      };
      "org/gnome/desktop/input-sources" = {
        xkb-options = [];
      };
      "org/gnome/desktop/interface" = {
        clock-format = "12h";
        clock-show-date = true;
        clock-show-seconds = false;
        clock-show-weekday = true;
        color-scheme = "prefer-dark";
        # "gtk-theme" = "Adwaita-dark";
        enable-hot-corners = false;
        show-battery-percentage = true;
      };
      "org/gnome/desktop/notifications" = {
        show-banners = false;
        show-in-lock-screen = false;
      };
      "org/gnome/desktop/peripherals/mouse" = {
        accel-profile = config.dconf.mouseAccelProfile;
        natural-scroll = config.dconf.mouseNaturalScroll;
      };
      "org/gnome/desktop/peripherals/touchpad" = {
        tap-to-click = false;
      };
      "org/gnome/desktop/session" = {
        idle-delay = lib.hm.gvariant.mkUint32 config.dconf.idleDelay;
      };
      "org/gnome/desktop/screen-time-limits" = {
        daily-limit-enabled = false;
        history-enabled = false;
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
        experimental-features = ["scale-monitor-framebuffer"];
        workspaces-only-on-primary = true;
      };
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-enabled = true;
        night-light-last-coordinates = lib.hm.gvariant.mkTuple([
          41.8240
          (-71.4128)
        ]);
        night-light-schedule-automatic = true;
        night-light-temperature = lib.hm.gvariant.mkUint32 config.dconf.nightLightTemperature;
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
        disable-extension-version-validation = true;
        favorite-apps = [
          "firefox.desktop"
          "org.gnome.Nautilus.desktop"
          "Alacritty.desktop"
          "code.desktop"
          "signal.desktop"
          "discord.desktop"
          "slack.desktop"
          "spotify.desktop"
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
      "org/gnome/system/location" = {
        enabled = true;
      };
      "org/gnome/TextEditor" = {
        highlight-current-line = true;
        restore-session = false;
        show-grid = false;
        style-scheme = "classic-dark";
      };
      "org/gtk/settings/file-chooser" = {
        clock-format = "12h";
      };
    };
  };
}
