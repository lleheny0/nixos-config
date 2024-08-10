{
  imports = [
    ../modules/large-text.nix
    ../modules/logitech-k400-plus.nix
  ];

  boot.extraModprobeConfig = ''
    options snd_hda_intel power_save=0
  '';

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/desktop/session" = {
        idle-delay = lib.hm.gvariant.mkUint32 0;
      };
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-temperature = lib.hm.gvariant.mkUint32 3750;
      };
    };
  };

  networking.hostName = "tv";
}
