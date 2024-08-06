{
  boot.extraModprobeConfig = ''
    options snd_hda_intel power_save=0
  '';

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/desktop/interface" = {
        text-scaling-factor = 1.5;
      };
      "org/gnome/desktop/session" = {
        idle-delay = lib.hm.gvariant.mkUint32 0;
      };
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-temperature = lib.hm.gvariant.mkUint32 3750;
      };
    };
  };
}
