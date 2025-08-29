{ pkgs, ... }:

{
  programs.wireshark.enable = true;
  users.users.luke = {
    extraGroups = [ "wireshark" ];
    packages = with pkgs; [ wireshark ];
  };
}
