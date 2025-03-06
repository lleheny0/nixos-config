{ pkgs, ... }:

{
  systemd.services.httpd.path = with pkgs; [ mpc ];

  services.httpd = {
    enable = true;
    user = "luke";
    enablePHP = true;
    phpPackage = pkgs.php;
    virtualHosts."localhost" = {
      documentRoot = "/home/luke/Projects/vgm-radio";
      listen = [{
        ip = "*";
        port = 8080;
      }];
    };
  };

  networking.firewall.allowedTCPPorts = [ 8080 ];
}
