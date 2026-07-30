{ pkgs, lib, ... }:

{
  services.caddy = {
    enable = true;
    virtualHosts."lukeleheny.com".extraConfig = ''
      handle_path /vgmradio* {
        root * /vgm/vgm-radio
        file_server
        reverse_proxy /icecast* http://localhost:8000
        reverse_proxy /metadata* http://localhost:8080
      }
    '';
  };

  networking.firewall.allowedTCPPorts = [ 80 443 ];
}
