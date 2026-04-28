let
  ublockConfig = builtins.toJSON {
    name = "uBlock0@raymondhill.net";
    description = "_";
    type = "storage";
    data = {
      adminSettings = {
        userFilters = ''
          ! Instagram
          www.instagram.com##._aagw
          www.instagram.com##.x1azxncr
          www.instagram.com##._aagu > .x13vifvy.x10l6tqk.x1o0tod.xtijo5x.x1ey2m1c

          ! Ebay
          www.ebay.com##.evo-carousel

          ! Youtube ambient mode
          www.youtube.com###cinematics
          www.youtube.com###shorts-cinematic-container
          www.youtube.com##+js(set, yt.config_.EXPERIMENT_FLAGS.kevlar_watch_cinematics, false)

          ! Perplexity AI
          www.perplexity.ai##[data-type="portal"]
        '';
      };
      toOverwrite = {
        filterLists = [
          "user-filters"
          "ublock-filters"
          "ublock-badware"
          "ublock-privacy"
          "ublock-quick-fixes"
          "ublock-unbreak"
          "easylist"
          "adguard-generic"
          "adguard-mobile"
          "easyprivacy"
          "adguard-spyware"
          "adguard-spyware-url"
          "urlhaus-1"
          "curben-phishing"
          "plowe-0"
          "dpollock-0"
          "fanboy-cookiemonster"
          "ublock-cookies-easylist"
          "adguard-cookies"
          "ublock-cookies-adguard"
          "easylist-chat"
          "easylist-newsletters"
          "easylist-notifications"
          "easylist-annoyances"
          "adguard-mobile-app-banners"
          "adguard-other-annoyances"
          "adguard-popup-overlays"
          "adguard-widgets"
          "ublock-annoyances"
          "https://raw.githubusercontent.com/gijsdev/ublock-hide-yt-shorts/master/list.txt"
        ];
      };
    };
  };
in
{
  home-manager.users.luke.home.file.".mozilla/managed-storage/uBlock0@raymondhill.net.json".text = ublockConfig;
  home-manager.users.luke.home.file.".config/mozilla/managed-storage/uBlock0@raymondhill.net.json".text = ublockConfig;
}
