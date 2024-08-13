{ config, pkgs, lib, ... }:

{
  imports = [
    <nixos-hardware/apple/macbook-pro/12-1>
    ../modules/laptop-speakers.nix
    ../modules/mac-input.nix
  ];

  networking.hostName = "macbookpro";

  services.mbpfan = {
    settings.general = {
      polling_interval = 5;
      max_temp = 90;
      low_temp = 50;
      high_temp = 70;
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
