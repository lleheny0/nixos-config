{
  services.pihole-ftl = {
    enable = true;
    settings = {
      dns.upstreams = [ "127.0.0.1#5335" ];
      dns.hosts = [];
    };
  };

  networking.firewall.allowedTCPPorts = [ 53 ];
  networking.firewall.allowedUDPPorts = [ 53 ];
}
