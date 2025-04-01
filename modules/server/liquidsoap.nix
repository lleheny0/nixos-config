{
  services.liquidsoap.streams = {
    vgm-stream = ./dotfiles/vgm-stream.liq;
  };

  networking.firewall.allowedTCPPorts = [ 8080 ];
}
