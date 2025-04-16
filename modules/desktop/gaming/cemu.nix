{ config, pkgs, ... }:

# Note: Run cemu on a 60hz monitor to avoid stutter
# Uncomment the lines below to switch to stable cemu

# let
#   stable = import
#     (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/24.05)
#     { config = config.nixpkgs.config; };
# in

{
  boot.kernelModules = [
    "hid-nintendo"
  ];

  users.users.luke.packages = with pkgs; [
    # stable.cemu
    cemu
    joycond-cemuhook
  ];

  environment.shellAliases = {
    jc = "sudo joycond-cemuhook";
  };
}
