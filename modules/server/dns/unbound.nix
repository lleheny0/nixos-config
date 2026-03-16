{
  services.unbound = {
    enable = true;
    settings = {
      server = {
        interface = [ "127.0.0.1" ];
        port = 5335;
        access-control = [ "127.0.0.1 allow" ];
        prefetch = true;
        # serve-expired = true;
      };
    };
  };

  networking.firewall.allowedTCPPorts = [ 5335 ];
  networking.firewall.allowedUDPPorts = [ 5335 ];
}
