{
  imports = [
    ./ignore-lid.nix
    ./large-text.nix
    ./logitech-k400-plus.nix
  ];

  home-manager.users.luke = { lib, ... }: {
    dconf.settings = {
      "org/gnome/desktop/session" = {
        idle-delay = lib.hm.gvariant.mkUint32 0;
      };
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-temperature = lib.hm.gvariant.mkUint32 4000;
      };
    };
  };
}
