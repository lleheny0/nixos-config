{
  networking.usePredictableInterfaceNames = false;
  networking.defaultGateway = "192.168.1.1";
  networking.nameservers = [ "1.1.1.1" ];
  networking.firewall.interfaces.eth0.allowedTCPPorts = [
    80
    443
    25565
  ];

  systemd.services.network-addresses-eth0 = {
    after = [ "dhcpcd.service" ];
  };
}
