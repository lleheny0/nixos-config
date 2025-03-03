{ pkgs, ... }:

{
  services.httpd = {
    enable = true;
    enablePHP = true;
    user = "luke";
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
