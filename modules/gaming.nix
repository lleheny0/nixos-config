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

  environment.shellAliases = {
    jc = "sudo joycond-cemuhook";
  };

  programs.steam.enable = true;

  users.users.luke.packages = with pkgs; [
    # stable.cemu
    cemu
    glfw3-minecraft
    joycond-cemuhook
    mcaselector
    piper
    (prismlauncher.override { jdks = [ jdk21 jdk8 ]; })
    protonup-ng
  ];

  services.ratbagd.enable = true;
}
