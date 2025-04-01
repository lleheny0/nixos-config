{
  services.httpd = {
    enable = true;
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
