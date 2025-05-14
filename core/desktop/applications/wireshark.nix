{ pkgs, ... }:

{
  programs.wireshark.enable = true;
  users.users.luke.extraGroups = [ "wireshark" ];
  users.users.luke.packages = with pkgs; [ wireshark ];
}
