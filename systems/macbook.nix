{ config, pkgs, lib, ... }:

{
  imports = [
    <nixos-hardware/apple/macbook-pro/12-1>
  ];

  home-manager.users.luke = {
    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = "Adwaita";
      };
    };
    programs.firefox.profiles.default.settings = {
      "mousewheel.default.delta_multiplier_y" = 25;
    };
  };

  networking.hostName = "macbookpro";

  services.keyd.keyboards.default.settings.main = {
    fn = "layer(aux)";
    leftmeta = "layer(alt)";
    leftalt = "layer(meta)";
    leftcontrol = "leftcontrol";
  };

  services.mbpfan = {
    settings.general = {
      polling_interval = 5;
      max_temp = 85;
      low_temp = 45;
      high_temp = 65;
    };
  };
}
