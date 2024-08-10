{ config, pkgs, lib, ... }:

{
  imports = [
    <nixos-hardware/apple/macbook-pro/12-1>
    ../modules/mac-input.nix
  ];

  networking.hostName = "macbookpro";

  services.mbpfan = {
    settings.general = {
      polling_interval = 5;
      max_temp = 85;
      low_temp = 45;
      high_temp = 65;
    };
  };

  home-manager.users.luke = {
    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = "Adwaita";
      };
    };
  };
}
