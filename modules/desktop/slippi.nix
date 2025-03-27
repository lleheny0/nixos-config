{ config, pkgs, ... }:

# Prerequisites:
# 1. Download the AppImage from https://slippi.gg/
# 2. Move it to /home/luke/Programs

{
  boot.extraModulePackages = [
    config.boot.kernelPackages.gcadapter-oc-kmod
  ];

  boot.kernelModules = [
    "gcadapter_oc"
  ];

  services.udev.packages = [ pkgs.dolphin-emu ];

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  programs.appimage.package = pkgs.appimage-run.override {
    extraPkgs = with pkgs; pkgs: [
      curl
    ];
  };

  environment.shellAliases = {
    sl = "appimage-run /home/luke/Programs/Slippi-Launcher-2.11.8-x86_64.AppImage";
  };
}
