{ pkgs, ... }:

{
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

  home-manager.users.luke.programs.chromium = {
    enable = true;
    commandLineArgs = [
      "--enable-features=AcceleratedVideoEncoder"
      "--enable-features=FluentOverlayScrollbars,FluentOverlayScrollbar"
      "--ignore-gpu-blocklist"
      "--enable-zero-copy"
    ];
  };
}
