{ pkgs, ... }:

{
  imports = [
    ./base
    ./modules/laptop-speakers.nix
    ./modules/large-text.nix
    ./modules/slow-scroll.nix
  ];

  networking.hostName = "ideapad";

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-temperature = lib.hm.gvariant.mkUint32 2700;
      };
    };
  };
}
