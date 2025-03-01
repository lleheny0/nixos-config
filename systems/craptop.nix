{
  imports = [
    ../core/server
    ../modules/ignore-lid.nix
  ];

  networking.hostName = "craptop";

  networking.interfaces.eth0.ipv4.addresses = [{
    address = "192.168.1.218";
    prefixLength = 24;
  }];
}
