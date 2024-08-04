{
  boot.extraModprobeConfig = ''
    options snd_hda_intel power_save=0
  '';

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/desktop/session" = {
        idle-delay = lib.hm.gvariant.mkUint32 0;
      };
    };
  };
}
