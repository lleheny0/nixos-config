{
  home-manager.users.luke.home.file.".mozilla/managed-storage/uBlock0@raymondhill.net.json".text =
  builtins.toJSON {
    name = "uBlock0@raymondhill.net";
    description = "_";
    type = "storage";
    data = {
      adminSettings = {
        userFilters = ''
          ! Instagram
          www.instagram.com##.xmnaoh6
          www.instagram.com##._aagw
          www.instagram.com##.x1azxncr
          www.instagram.com##.x1nhvcw1.x1oa3qoh.x1qjc9v5.xqjyukv.xdt5ytf.x2lah0s.x1c4vz4f.xryxfnj.x1plvlek.x1uhb9sk.xseo6mj.xo71vjh.x5pf9jr.x13lgxp2.x168nmei.x78zum5.xjbqb8w.x9f619

          ! Ebay
          www.ebay.com##.evo-carousel

          ! Youtube ambient mode
          www.youtube.com###cinematics
          www.youtube.com###shorts-cinematic-container
          www.youtube.com##+js(set, yt.config_.EXPERIMENT_FLAGS.kevlar_watch_cinematics, false)

          ! Youtube shorts
          www.youtube.com##[is-shorts]
          www.youtube.com##ytd-reel-shelf-renderer
          www.youtube.com##ytd-search ytd-video-renderer:has([overlay-style="SHORTS"])
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
        ];
      };
    };
  };
}
