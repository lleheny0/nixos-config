{ config, pkgs, ... }:

# Prerequisites:
# 1. Download the AppImage from https://slippi.gg/
# 2. Move it to /home/luke/Programs
# 3. Run it with appimage-run and log in

{
  boot.extraModulePackages = [ config.boot.kernelPackages.gcadapter-oc-kmod ];

  boot.kernelModules = [
    "gcadapter_oc"
  ];

  services.udev.packages = [ pkgs.dolphin-emu ];

  users.users.luke.packages = with pkgs; [
    (appimage-run.override {
      extraPkgs = pkgs: [ curl ];
    })
  ];

  environment.shellAliases = {
    sl = "appimage-run /home/luke/Programs/Slippi-Launcher-2.11.8-x86_64.AppImage";
    sn = "appimage-run /home/luke/.config/Slippi\\ Launcher/netplay/Slippi_Online-x86_64.AppImage";
  };
}
