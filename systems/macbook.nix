{ config, pkgs, lib, ... }:

{
  imports = [
    ./base
    <nixos-hardware/apple/macbook-pro/12-1>
    ./modules/tv.nix
  ];

  networking.hostName = "macbookpro";

  services.mbpfan = {
    settings.general = {
      polling_interval = 1;
      low_temp = 50;
      high_temp = 50;
      max_temp = 90;
    };
  };
}
