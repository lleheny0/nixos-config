{
  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/desktop/session" = {
        idle-delay = lib.hm.gvariant.mkUint32 0;
      };
    };
  };
}
