{ pkgs, ... }:

# Note: The librespot service must be manually restarted on boot

{
  nixpkgs.overlays = [
    (final: prev: {
      librespot = prev.librespot.overrideAttrs (oldAttrs: {
        src = prev.fetchFromGitHub {
          owner = "librespot-org";
          repo = "librespot";
          rev = "3c9e84a68e8686c96ece937c531157940acac206";
          sha256 = "sha256-U2sLiy5R1a0JC76bhqaR+maBV13ghUsBsruS03CXP3M=";
        };
        cargoDeps = final.rustPlatform.fetchCargoVendor {
          src = prev.fetchFromGitHub {
            owner = "librespot-org";
            repo = "librespot";
            rev = "3c9e84a68e8686c96ece937c531157940acac206";
            sha256 = "sha256-U2sLiy5R1a0JC76bhqaR+maBV13ghUsBsruS03CXP3M=";
          };
          hash = "sha256-Lujz2revTAok9B0hzdl8NVQ5XMRY9ACJzoQHIkIgKMg=";
        };
      });
    })
  ];

  systemd.services.librespot = {
    enable = true;
    description = "Librespot";
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.librespot}/bin/librespot --backend pipe --device /run/snapcast --name \"Home - Librespot\" --zeroconf-port 15353 --enable-volume-normalisation --normalisation-method basic --volume-ctrl cubic";
      Restart = "on-failure";
      User = "luke";
    };
  };

  environment.shellAliases.rl = "sudo systemctl restart librespot.service";

  networking.firewall.allowedTCPPorts = [ 5353 15353 ];
}
