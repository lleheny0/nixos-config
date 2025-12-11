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
    package = pkgs.appimage-run.override {
      extraPkgs = pkgs: [
        pkgs.curl
      ];
    };
  };

  home-manager.users.luke.xdg.desktopEntries.slippi = {
    name = "Slippi";
    exec = "appimage-run /home/luke/Programs/Slippi-Launcher-2.12.0-x86_64.AppImage";
    icon = ./slippi.png;
    categories = [ "Game" ];
  };
}
