{
  services.unbound = {
    enable = true;
    settings = {
      server = {
        interface = [ "0.0.0.0" ];
        access-control = [ "192.168.1.0/24 allow" ];
      };
      forward-zone = [
        {
          name = ".";
          forward-addr = [
            "94.140.14.14"
            "94.140.15.15"
          ];
        }
      ];
    };
  };

  networking.firewall = {
    allowedTCPPorts = [ 53 ];
    allowedUDPPorts = [ 53 ];
  };
}
