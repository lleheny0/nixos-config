{ pkgs, ... }:

# Settings that need to be manually set:
# 1. chrome://settings/performance > Preload pages
# 2. chrome://settings/appearance > Theme
# 3. chrome://settings/security > Warn you if a password was compromised
# 4. chrome://settings/content/siteData > Delete data when exiting
# 5. New tab > Customize Chromium > Uncheck Show shortcuts
# 6. New tab > Customize Chromium > Toolbar > Check Downloads

{
  programs.chromium = {
    enable = true;
    extraOpts = {
      "AutofillAddressEnabled" = false;
      "AutofillCreditCardEnabled" = false;
      "BlockThirdPartyCookies" = true;
      "ClearBrowsingDataOnExitList" = [
        "browsing_history"
        "download_history"
        "cached_images_and_files"
        "password_signin"
        "autofill"
        "hosted_app_data"
      ];
      "DefaultBrowserSettingEnabled" = false;
      "DefaultNotificationsSetting" = 2;
      "ForceMaximizeOnFirstRun" = true;
      "PasswordManagerEnabled" = false;
      "RestoreOnStartup" = 1;
      "SafeBrowsingProtectionLevel" = 0;
      "SavingBrowserHistoryDisabled" = true;
    };
    extensions = [
      "aeblfdkhhhdcdjpifhhbdiojplfjncoa" # 1password
      "ddkjiahejlhfcafbddmgiahcphecmpfh" # uBlock Origin Lite
    ];
  };

  home-manager.users.luke.programs.chromium = {
    enable = true;
    package = (pkgs.chromium.override { enableWideVine = true; });
    commandLineArgs = [
      "--use-gl=angle"
      "--use-angle=vulkan"
      "--enable-accelerated-video-decode"
      "--enable-features=Vulkan,VulkanFromANGLE,DefaultANGLEVulkan,VaapiIgnoreDriverChecks,VaapiVideoDecoder,PlatformHEVCDecoderSupport,FluentOverlayScrollbars,FluentOverlayScrollbar"
      "--disable-features=GlobalShortcutsPortal"
    ];
  };
}
