{ pkgs, ... }:

# Note: The librespot service must be manually restarted on boot

{
  systemd.services.librespot = {
    enable = true;
    description = "Librespot";
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.librespot}/bin/librespot --backend pipe --device /run/snapcast --name \"Home - Librespot\" --zeroconf-port 15353 --enable-volume-normalisation --normalisation-method basic --volume-ctrl cubic";
      Restart = "on-failure";
      User = "luke";
    };
  };

  environment.shellAliases.rl = "sudo systemctl restart librespot.service";

  networking.firewall.allowedTCPPorts = [ 5353 15353 ];
}
