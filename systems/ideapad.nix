{ pkgs, ... }:

{
  imports = [
    ../core/desktop
    ../modules/desktop/social.nix
    ../modules/hardware/large-text.nix
    ../modules/hardware/no-audio-powersave.nix
  ];

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-temperature = lib.hm.gvariant.mkUint32 2700;
      };
    };
  };

  firefox.scrollSpeed = 50;

  networking.hostName = "ideapad";
}
