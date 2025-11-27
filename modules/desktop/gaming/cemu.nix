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

  environment.shellAliases.jc = "sudo joycond-cemuhook";

  # systemd.services.botw-backup = {
  #   description = "BOTW save backup";
  #   path = with pkgs; [ gnutar gzip ];
  #   script = ''
  #     cd /home/luke/.local/share/Cemu/mlc01/usr/save/00050000/101c9400/user/80000001
  #     tar -czf "/home/luke/Backups/BOTW/$(date +%Y-%m-%d).tar.gz" *
  #     ls -F /home/luke/Backups/BOTW/*.tar.gz | head -n -10 | xargs -r rm
  #   '';
  #   serviceConfig = {
  #     Type = "oneshot";
  #     User = "luke";
  #   };
  # };
  # systemd.timers.botw-backup = {
  #   wantedBy = [ "timers.target" ];
  #   timerConfig = {
  #     OnCalendar = "*-*-* 04:00:00";
  #     Persistent = true;
  #     Unit = "botw-backup.service";
  #   };
  # };
}
