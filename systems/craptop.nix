{
  imports = [
    ../core/server
  ];

  networking.hostName = "craptop";

  networking.interfaces.enp1s0.ipv4.addresses = [{
    address = "192.168.1.218";
    prefixLength = 24;
  }];
}
