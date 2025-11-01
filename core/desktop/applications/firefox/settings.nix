{ config, lib, ... }:

{
  options.firefox = {
    scrollSpeed = lib.mkOption {
      type = lib.types.int;
      default = 400;
      description = "Scroll speed multiplier";
    };
    textScaling = lib.mkOption {
      type = lib.types.float;
      default = -1.0;
      description = "Text scaling factor";
    };
  };

  config.home-manager.users.luke.programs.firefox.profiles.default = {
    id = 0;
    name = "default";
    isDefault = true;
    settings = {
      "accessibility.force_disabled" = 0;
      "browser.aboutConfig.showWarning" = false;
      "browser.bookmarks.editDialog.showForNewBookmarks" = false;
      "browser.download.alwaysOpenPanel" = false;
      "browser.download.autohideButton" = false;
      "browser.formfill.enable" = false;
      "browser.link.open_newwindow" = 3;
      "browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;
      "browser.newtabpage.activity-stream.showWeather" = false;
      "browser.search.suggest.enabled.private" = true;
      "browser.sessionstore.restore_pinned_tabs_on_demand" = true;
      "browser.startup.homepage" = "chrome://browser/content/blanktab.html";
      "browser.startup.page" = 3;
      "browser.tabs.firefox-view" = false;
      "browser.tabs.insertAfterCurrent" = true;
      "browser.tabs.tabmanager.enabled" = false;
      "browser.urlbar.scotchBonnet.enableOverride" = false;
      "browser.urlbar.shortcuts.bookmarks" = false;
      "browser.urlbar.shortcuts.history" = false;
      "browser.urlbar.shortcuts.quickactions" = false;
      "browser.urlbar.shortcuts.tabs" = false;
      "browser.urlbar.suggest.engines" = false;
      "browser.urlbar.suggest.history" = false;
      "browser.urlbar.suggest.openpage" = false;
      "browser.urlbar.suggest.quickactions" = false;
      "browser.urlbar.suggest.topsites" = false;
      "browser.warnOnQuitShortcut" = false;
      "datareporting.healthreport.uploadEnabled" = false;
      "layout.css.devPixelsPerPx" = config.firefox.textScaling;
      "media.ffmpeg.vaapi.enabled" = true;
      "media.hardware-video-decoding.force-enabled" = true;
      "mousewheel.default.delta_multiplier_x" = config.firefox.scrollSpeed;
      "mousewheel.default.delta_multiplier_y" = config.firefox.scrollSpeed;
      "permissions.default.desktop-notification" = 2;
      "permissions.default.geo" = 2;
      "places.history.enabled" = false;
      "sidebar.revamp" = false;
      "sidebar.visibility" = "hide-sidebar";
    };
  };
}
