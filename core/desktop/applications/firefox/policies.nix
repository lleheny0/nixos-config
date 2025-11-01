{
  home-manager.users.luke.programs.firefox.policies = {
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
      Category = "strict";
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
      Stories = false;
      SponsoredPocket = false;
      SponsoredStories = false;
      Snippets = false;
      Locked = true;
    };
    FirefoxSuggest = {
      WebSuggestions = false;
      SponsoredSuggestions = false;
      ImproveSuggest = false;
      Locked = true;
    };
    GenerativeAI = {
      Enabled = false;
      Chatbot = false;
      LinkPreviews = false;
      TabGroups = false;
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
    SearchEngines = {
      Default = "DuckDuckGo";
      Remove = [
        "Google"
        "Bing"
        "Yahoo"
        "Amazon.com"
        "eBay"
        "Wikipedia (en)"
        "Perplexity"
      ];
    };
  };
}
