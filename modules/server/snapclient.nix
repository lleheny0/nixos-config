{ pkgs, ... }:

{
  systemd.services.snapclient = {
    description = "Snapcast client";
    serviceConfig = {
      ExecStart = "${pkgs.snapcast}/bin/snapclient --host 192.168.1.128 --soundcard 3";
      Restart = "on-failure";
    };
  };

  users.users.luke.packages = with pkgs; [
    snapcast
  ];
}
