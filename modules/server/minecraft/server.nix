{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    jdk25_headless
  ];

  networking.firewall.allowedTCPPorts = [ 25565 ];
}
