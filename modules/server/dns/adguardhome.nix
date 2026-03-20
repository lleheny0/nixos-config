{
  services.adguardhome = {
    enable = true;
    host = "192.168.1.128";
    port = 3000;
    settings = {
      dns = {
        upstream_dns = [
          "127.0.0.1:5335"
        ];
      };
      filtering = {
        protection_enabled = true;
        filtering_enabled = true;
        # cache_optimistic = true;

        parental_enabled = false;
        safe_search = {
          enabled = false;
        };
      };
      filters = map(url: { enabled = true; url = url; }) [
        "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/pro.txt"
        "https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/adblock/tif.txt"
      ];
      querylog.interval = "720h";
      statistics.interval = "720h";
    };
  };

  networking.firewall.allowedTCPPorts = [ 53 3000 ];
  networking.firewall.allowedUDPPorts = [ 53 3000 ];
}
