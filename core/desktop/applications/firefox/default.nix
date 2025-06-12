{
  imports = [
    ./scroll-speed.nix
    ./text-scaling.nix
    ./ublock-origin.nix
  ];

  home-manager.users.luke = { lib, ... }: {
    programs.firefox = {
      enable = true;
      policies = {
        AutofillAddressEnabled = false;
        AutofillCreditCardEnabled = false;
        DisableAccounts = true;
        DisableFirefoxAccounts = true;
        DisableFirefoxScreenshots = true;
        DisableFirefoxStudies = true;
        DisableFormHistory = true;
        DisablePocket = true;
        DisableProfileImport = true;
        DisableProfileRefresh = true;
        DisableSetDesktopBackground = true;
        DisableTelemetry = true;
        DisplayBookmarksToolbar = "never";
        DisplayMenuBar = "never";
        DontCheckDefaultBrowser = true;
        EnableTrackingProtection = {
          Value = true;
          Cryptomining = true;
          Fingerprinting = true;
          EmailTracking = true;
          Locked = true;
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
        HardwareAcceleration = true;
        Homepage = {
          StartPage = "previous-session";
          Locked = true;
        };
        NewTabPage = false;
        # NoDefaultBookmarks = true;
        OfferToSaveLogins = false;
        OverrideFirstRunPage = "";
        PasswordManagerEnabled = false;
        PictureInPicture = {
          Enabled = false;
          Locked = true;
        };
        PrimaryPassword = false;
        SanitizeOnShutdown = {
          Cache = true;
          Cookies = true;
          Downloads = true;
          FormData = true;
          History = false;
          Sessions = true;
          SiteSettings = false;
          Locked = true;
        };
      };
      profiles.default = {
        id = 0;
        name = "default";
        isDefault = true;
        bookmarks = import ./bookmarks.nix;
        settings = {
          "accessibility.force_disabled" = 0;
          "browser.aboutConfig.showWarning" = false;
          "browser.bookmarks.editDialog.showForNewBookmarks" = false;
          "browser.download.alwaysOpenPanel" = false;
          "browser.download.autohideButton" = false;
          "browser.formfill.enable" = false;
          "browser.link.open_newwindow" = 3;
          "browser.ml.chat.enabled" = false;
          "browser.search.suggest.enabled.private" = true;
          "browser.sessionstore.restore_pinned_tabs_on_demand" = true;
          "browser.startup.homepage" = "chrome://browser/content/blanktab.html";
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
          "media.ffmpeg.vaapi.enabled" = true;
          "media.hardware-video-decoding.force-enabled" = true;
          "mousewheel.default.delta_multiplier_x" = lib.mkDefault 400;
          "mousewheel.default.delta_multiplier_y" = lib.mkDefault 400;
          "permissions.default.desktop-notification" = 2;
          "permissions.default.geo" = 2;
          "places.history.enabled" = false;
          "sidebar.revamp" = false;
          "sidebar.visibility" = "hide-sidebar";
        };
      };
    };
  };
}
