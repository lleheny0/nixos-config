{
  home-manager.users.luke.home.file.".mozilla/managed-storage/uBlock0@raymondhill.net.json".text =
  builtins.toJSON {
    name = "uBlock0@raymondhill.net";
    description = "_";
    type = "storage";
    data = {
      adminSettings = {
        userFilters = ''
        '';
      };
      # userSettings = [
      #   [ "autoUpdate" "true" ]
      # ];
      # toOverwrite = {
      #   filterLists = [
      #   ];
      # };
    };
  };
}
