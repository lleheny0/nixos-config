{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    (chromium.override {
      commandLineArgs = [
        "--enable-features=AcceleratedVideoEncoder"
        "--ignore-gpu-blocklist"
        "--enable-zero-copy"
      ];
      enableWideVine = true;
    })
  ];

  programs.chromium = {
    enable = true;
    extraOpts = {
      "AutofillAddressEnabled" = false;
      "AutofillCreditCardEnabled" = false;
      "ClearBrowsingDataOnExitList" = [
        "browsing_history"
        "download_history"
        "cookies_and_other_site_data"
        "cached_images_and_files"
        "password_signin"
        "autofill"
        "site_settings"
        "hosted_app_data"
      ];
      "ForceMaximizeOnFirstRun" = true;
      "PasswordManagerEnabled" = false;
      "RestoreOnStartup" = 1;
      "SavingBrowserHistoryDisabled" = true;
    };
    extensions = [
      "aeblfdkhhhdcdjpifhhbdiojplfjncoa" # 1password
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
    ];
  };
}
