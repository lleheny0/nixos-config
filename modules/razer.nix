{ pkgs, ... }:

{
  hardware.openrazer.enable = true;
  users.users.luke.packages = with pkgs; [
    openrazer-daemon
    polychromatic
  ];
  users.users.luke = { extraGroups = [ "openrazer" ]; };
}
