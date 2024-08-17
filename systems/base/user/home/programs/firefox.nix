{
  home-manager.users.luke = { lib, ... }: {
    programs.firefox = {
      enable = true;
      policies = {
        DisableFirefoxStudies = true;
        DisableFormHistory = true;
        DisablePocket = true;
        DisableTelemetry = true;
        DisplayBookmarksToolbar = "never";
        EnableTrackingProtection = {
          Value = true;
          Locked = true;
          Cryptomining = true;
          Fingerprinting = true;
          EmailTracking = true;
        };
        Extensions = {
          Install = [
            "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi"
            "https://addons.mozilla.org/firefox/downloads/latest/1password-x-password-manager/latest.xpi"
          ];
        };
        FirefoxHome = {
          Search = false;
          TopSites = false;
          SponsoredTopSites = false;
          Highlights = false;
          Pocket = false;
          SponsoredPocket = false;
          Snippets = false;
          Locked = true;
        };
        FirefoxSuggest = {
          WebSuggestions = false;
          SponsoredSuggestions = false;
          ImproveSuggest = false;
          Locked = true;
        };
        OfferToSaveLogins = false;
        OverrideFirstRunPage = "";
        PasswordManagerEnabled = false;
        PictureInPicture = {
          Enabled = false;
        };
      };
      profiles.default = {
        id = 0;
        name = "default";
        isDefault = true;
        settings = {
          "browser.aboutConfig.showWarning" = false;
          "browser.bookmarks.editDialog.showForNewBookmarks" = false;
          "browser.download.alwaysOpenPanel" = false;
          "browser.download.autohideButton" = false;
          "browser.formfill.enable" = false;
          "browser.newtabpage.pinned" = [];
          "browser.search.suggest.enabled.private" = true;
          "browser.sessionstore.restore_pinned_tabs_on_demand" = true;
          "browser.startup.page" = 3;
          "browser.tabs.firefox-view" = false;
          "browser.tabs.tabClipWidth" = 0;
          "browser.tabs.tabmanager.enabled" = false;
          "browser.urlbar.shortcuts.bookmarks" = false;
          "browser.urlbar.shortcuts.history" = false;
          "browser.urlbar.shortcuts.quickactions" = false;
          "browser.urlbar.shortcuts.tabs" = false;
          "browser.urlbar.suggest.engines" = false;
          "browser.urlbar.suggest.history" = false;
          "browser.urlbar.suggest.openpage" = false;
          "browser.urlbar.suggest.topsites" = false;
          "browser.warnOnQuitShortcut" = false;
          "datareporting.healthreport.uploadEnabled" = false;
          "dom.battery.enabled" = true;
          "extensions.formautofill.addresses.enabled" = false;
          "extensions.formautofill.creditCards.enabled" = false;
          "font.default.x-western" = "sans-serif";
          "font.name.sans-serif.x-western" = "FreeSans";
          "media.ffmpeg.vaapi.enabled" = true;
          "media.hardware-video-decoding.force-enabled" = true;
          "mousewheel.default.delta_multiplier_x" = lib.mkDefault 100;
          "mousewheel.default.delta_multiplier_y" = lib.mkDefault 100;
          "places.history.enabled" = false;
          "privacy.clearOnShutdown.cache" = true;
          "privacy.clearOnShutdown.cookies" = true;
          "privacy.clearOnShutdown.downloads" = true;
          "privacy.clearOnShutdown.formData" = true;
          "privacy.clearOnShutdown.history" = false;
          "privacy.clearOnShutdown.offlineApps" = true;
          "privacy.clearOnShutdown.openWindows" = true;
          "privacy.clearOnShutdown.sessions" = true;
          "privacy.clearOnShutdown.siteSettings" = false;
          "privacy.sanitize.sanitizeOnShutdown" = true;
          "privacy.userContext.enabled" = false;
          "ui.key.menuAccessKeyFocuses" = false;
        };
      };
    };
  };
}
