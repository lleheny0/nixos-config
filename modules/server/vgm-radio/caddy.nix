{ pkgs, lib, ... }:

{
  services.caddy = {
    enable = true;
    virtualHosts."lukeleheny.com".extraConfig = ''
      root * /www/homepage
      file_server

      handle_path /vgmradio* {
        root * /www/vgm-radio
        file_server
        reverse_proxy /icecast* http://localhost:8000
        reverse_proxy /metadata* http://localhost:8080
      }

      handle_path /resume* {
        root * /www/resume
        file_server
      }
    '';
  };

  networking.firewall.allowedTCPPorts = [ 80 443 ];
}
