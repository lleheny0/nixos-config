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
      low_temp = 45;
      high_temp = 65;
      max_temp = 85;
    };
  };

  # home-manager.users.luke = {
  #   dconf.settings = {
  #     "org/gnome/desktop/interface" = {
  #       cursor-theme = "Adwaita";
  #     };
  #   };
  # };
}
