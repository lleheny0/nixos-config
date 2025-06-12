{ pkgs, lib, ... }:

{
  services.caddy = {
    enable = true;
    virtualHosts."leheny.ddns.net".extraConfig = ''
      root * /vgm/vgm-radio
      file_server

      reverse_proxy /vgmradio http://localhost:8000
      reverse_proxy /metadata http://localhost:8080
    '';
  };

  networking.firewall.allowedTCPPorts = [ 80 443 ];
}
