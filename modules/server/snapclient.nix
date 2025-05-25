{ pkgs, ... }:

{
  systemd.user.services.snapclient = {
    enable = true;
    description = "Snapcast client";
    after = [ "network.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.snapcast}/bin/snapclient --host 192.168.1.128";
      Restart = "on-failure";
    };
  };

  users.users.luke.packages = with pkgs; [
    snapcast
  ];
}
