{
  imports = [
    ../core/server
  ];

  networking.hostName = "craptop";

  networking.interfaces.enp1s0.ipv4.addresses = [{
    address = "192.168.1.218";
    prefixLength = 24;
  }];

  networking.defaultGateway = "192.168.1.1";
  networking.nameservers = [ "1.1.1.1" ];
}
