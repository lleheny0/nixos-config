{ asUser ? true, params ? "" }:
{ pkgs, lib, ... }:

let
  service = {
    enable = true;
    description = "Snapcast client";
    after = [ "network.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 30";
      ExecStart = "${pkgs.snapcast}/bin/snapclient --host 192.168.1.128 ${params}";
      Restart = "on-failure";
    };
  };
in
{
  hardware.alsa = lib.mkIf (!asUser) { enable = true; };

  systemd.services = lib.mkIf (!asUser) { snapclient = service; };
  systemd.user.services = lib.mkIf asUser { snapclient = service; };

  environment.systemPackages = with pkgs; [
    snapcast
  ];
}
