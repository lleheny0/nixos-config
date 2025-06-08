{ pkgs, ... }:

{
  systemd.tmpfiles.rules = [
    "p /run/spotify 0666 luke users -"
  ];

  services.snapserver = {
    enable = true;
    openFirewall = true;
    streams = {
      spotify = {
        type = "pipe";
        location = "/run/spotify";
        query = {
          sampleformat = "44100:16:2";
        };
      };
    };
  };

  systemd.services.librespot = {
    enable = true;
    description = "Librespot";
    after = [ "network-online.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.librespot}/bin/librespot --backend pipe --device /run/spotify --name Home --zeroconf-port 15353 --enable-volume-normalisation --normalisation-method basic";
      Restart = "on-failure";
      User = "luke";
    };
  };

  systemd.services.librespot-restarter = {
    script = "${pkgs.systemd}/bin/systemctl restart librespot";
    serviceConfig = {
      Type = "oneshot";
      User = "root";
    };
  };
  systemd.timers.librespot-restarter = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnBootSec = "60";
      Unit = "librespot-restarter.service";
    };
  };

  environment.systemPackages = with pkgs; [
    librespot
  ];

  networking.firewall.allowedTCPPorts = [ 1704 1705 1780 5353 15353 ];
}
