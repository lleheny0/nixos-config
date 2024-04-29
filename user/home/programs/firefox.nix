{ config, pkgs, ... }:

{
  home-manager.users.luke.programs.firefox = {
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
      SanitizeOnShutdown = {
        Cache = true;
        Cookies = true;
        Locked = true;
      };
    };
    profiles.default = {
      id = 0;
      name = "default";
      isDefault = true;
      settings = {
        "browser.aboutConfig.showWarning" = false;
        "browser.download.alwaysOpenPanel" = false;
        "browser.download.autohideButton" = false;
        "browser.formfill.enable" = false;
        "browser.newtabpage.pinned" = [];
        "browser.search.suggest.enabled.private" = true;
        "browser.sessionstore.restore_pinned_tabs_on_demand" = true;
        "browser.startup.page" = 3;
        "browser.tabs.tabClipWidth" = 0;
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
        "dom.event.clipboardevents.enabled" = false;
        "dom.security.https_only_mode" = true;
        "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";
        "extensions.formautofill.addresses.enabled" = false;
        "extensions.formautofill.creditCards.enabled" = false;
        "font.default.x-western" = "sans-serif";
        "font.name.sans-serif.x-western" = "FreeSans";
        "media.rdd-process.enabled" = false;
        "mousewheel.default.delta_multiplier_y" = 25;
        "places.history.enabled" = false;
        "privacy.fingerprintingProtection" = false;
        "privacy.firstparty.isolate" = true;
        "privacy.resistFingerprinting" = true;
      };
    };
  };
}