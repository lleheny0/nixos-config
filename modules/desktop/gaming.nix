{ config, pkgs, ... }:

# Uncomment the commented lines to switch to stable cemu
# Note: Run cemu on a 60hz monitor to avoid stutter

# let
#   stable = import
#     (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/24.05)
#     { config = config.nixpkgs.config; };
# in
{
  boot.kernelModules = [
    "hid-nintendo"
  ];

  boot.kernelParams = [ "bluetooth.disable_ertm=1" ];

  environment.shellAliases = {
    jc = "sudo joycond-cemuhook";
  };

  programs.steam.enable = true;

  users.users.luke.packages = with pkgs; [
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
