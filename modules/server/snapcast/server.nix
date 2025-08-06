{ pkgs, ... }:

{
  imports = [
    ./librespot.nix
    ./mpg123.nix
    ./shairport.nix
  ];

  systemd.tmpfiles.rules = [
    "p /run/snapcast 0666 luke users -"
  ];

  services.snapserver = {
    enable = true;
    openFirewall = true;
    streams = {
      spotify = {
        type = "pipe";
        location = "/run/snapcast";
        query = {
          sampleformat = "44100:16:2";
        };
      };
    };
  };

  networking.firewall.allowedTCPPorts = [ 1704 1705 1780 ];
}
