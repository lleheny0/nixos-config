{ lib, ... }:

{
  networking.hostName = lib.mkDefault "nixos";
  networking.networkmanager.enable = lib.mkDefault true;
}
