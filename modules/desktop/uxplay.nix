{ config, pkgs, ... }:

{
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    publish = {
      enable = true;
      userServices = true;
    };
  };

  systemd.user.services.uxplay = {
    enable = true;
    description = "AirPlay mirroring server";
    after = [ "network.target" "avahi-daemon.service" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.uxplay}/bin/uxplay -p -n \"${config.networking.hostName}\" -nh -fs";
      Restart = "on-failure";
    };
  };

  networking.firewall.allowedUDPPorts = [ 5353 6000 6001 7011 ];
  networking.firewall.allowedTCPPorts = [ 7000 7001 7100 ];
}
