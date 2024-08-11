{ pkgs, ... }:

{
  imports = [
    ../modules/large-text.nix
    ../modules/slow-scroll.nix
  ];

  networking.hostName = "ideapad";

  users.users.luke.packages = with pkgs; [
    easyeffects
  ];

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-temperature = lib.hm.gvariant.mkUint32 2700;
      };
    };
  };
}
