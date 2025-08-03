{ config, pkgs, lib, ... }:

let
  soundcard = if config.snapclient.asUser then "--soundcard pipewire" else "";

  service = {
    enable = true;
    description = "Snapcast client";
    after = [ "network.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.snapcast}/bin/snapclient --host 192.168.1.128 ${soundcard} ${config.snapclient.params}";
      Restart = "on-failure";
    };
  };
in
{
  options.snapclient = {
    asUser = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Whether the service should a user service";
    };
    params = lib.mkOption {
      type = lib.types.str;
      default = "";
      description = "Additional command line flags for snapclient";
    };
  };

  config = {
    hardware.alsa = lib.mkIf (!config.snapclient.asUser) { enable = true; };

    systemd.services = lib.mkIf (!config.snapclient.asUser) { snapclient = service; };
    systemd.user.services = lib.mkIf config.snapclient.asUser { snapclient = service; };

    environment.systemPackages = with pkgs; [
      snapcast
    ];
  };
}
