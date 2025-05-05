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
      "ForceMaximizeOnFirstRun" = true;
      "PasswordManagerEnabled" = false;
      "RestoreOnStartup" = 1;
      "SafeBrowsingProtectionLevel" = 0;
      "SavingBrowserHistoryDisabled" = true;
    };
    extensions = [
      "aeblfdkhhhdcdjpifhhbdiojplfjncoa" # 1password
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
    ];
  };
}
