{ pkgs, ... }:

{
  systemd.tmpfiles.rules = [
    "p /run/spotify 0666 luke users -"
  ];

  nixpkgs.overlays = [
    (final: prev: {
      librespot = prev.librespot.overrideAttrs (old: {
        cargoBuildFlags = (old.cargoBuildFlags or []) ++ [ "--features=with-libmdns" ];
      });
    })
  ];

  services.snapserver = {
    enable = true;
    openFirewall = true;
    streams = {
      spotify = {
        type = "pipe";
        location = "/run/spotify";
        query = {
          sampleformat = "44100:16:2";
        };
      };
    };
  };

  systemd.services.librespot = {
    enable = true;
    description = "Librespot";
    after = [ "network.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 30";
      ExecStart = "${pkgs.librespot}/bin/librespot --backend pipe --device /run/spotify --name Home --zeroconf-port 15353 --enable-volume-normalisation --normalisation-method basic";
      Restart = "on-failure";
    };
  };

  environment.systemPackages = with pkgs; [
    librespot
  ];

  networking.firewall.allowedTCPPorts = [ 1704 1705 1780 5353 15353 ];
}
