{
  services.liquidsoap.streams = {
    vgm-radio = ./vgm-radio.liq;
  };

  networking.firewall.allowedTCPPorts = [ 8080 ];
}
