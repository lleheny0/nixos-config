{ soundcard ? "1" }:
{ pkgs, ... }:

{
  hardware.alsa.enable = true;

  systemd.services.snapclient = {
    enable = true;
    description = "Snapcast client";
    after = [ "network.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 30";
      ExecStart = "${pkgs.snapcast}/bin/snapclient --host 192.168.1.128 --soundcard ${soundcard}";
      Restart = "on-failure";
    };
  };

  environment.systemPackages = with pkgs; [
    snapcast
  ];
}
