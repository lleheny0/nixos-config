{ pkgs, ... }:

{
  imports = [
    ../core/desktop
    ../modules/hardware/large-text.nix
    ../modules/hardware/no-audio-powersave.nix
    ../modules/hardware/slow-scroll.nix
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
