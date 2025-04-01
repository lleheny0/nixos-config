{ pkgs, ... }:

{
  systemd.services.httpd.path = with pkgs; [ mpc ];

  services.httpd = {
    enable = true;
    enablePHP = true;
    phpPackage = pkgs.php;
    virtualHosts."localhost" = {
      documentRoot = "/vgm/vgm-radio";
      listen = [{
        ip = "*";
        port = 80;
      }];
    };
  };

  networking.firewall.allowedTCPPorts = [ 80 ];
}
