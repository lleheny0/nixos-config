{ config, pkgs, ... }:

# Uncomment the commented lines to switch to stable cemu
# Note: Run cemu on a 60hz monitor to avoid stutter

# let
#   stable = import
#     (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/24.05)
#     { config = config.nixpkgs.config; };
# in
{
  boot.extraModulePackages = [ config.boot.kernelPackages.gcadapter-oc-kmod ];

  boot.kernelModules = [
    "hid-nintendo"
    "gcadapter_oc"
  ];

  services.udev.packages = [ pkgs.dolphin-emu ];

  # For the Slippi commands to work, run the AppImage from slippi.gg
  environment.shellAliases = {
    jc = "sudo joycond-cemuhook";
    sl = "appimage-run /home/luke/Programs/Slippi-Launcher-2.11.8-x86_64.AppImage";
    sn = "appimage-run /home/luke/.config/Slippi\\ Launcher/netplay/Slippi_Online-x86_64.AppImage";
  };

  programs.steam.enable = true;

  users.users.luke.packages = with pkgs; [
    (appimage-run.override {
      extraPkgs = pkgs: [ curl ];
    })
    # stable.cemu
    cemu
    glfw3-minecraft
    goverlay
    joycond-cemuhook
    mangohud
    mcaselector
    piper
    (prismlauncher.override { jdks = [ jdk21 jdk8 ]; })
    protonup-ng
    radeontop
  ];

  services.ratbagd.enable = true;

  home-manager.users.luke.home.file.".config/MangoHud/MangoHud.conf".source = ./dotfiles/MangoHud.conf;
}
