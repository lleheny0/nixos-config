{
  imports = [
    <home-manager/nixos>
  ];

  home-manager.useGlobalPkgs = true;

  home-manager.users.luke = {
    home = {
      username = "luke";
      homeDirectory = "/home/luke";
      stateVersion = "25.05";
      packages = [];
    };

    programs.home-manager.enable = true;

    qt = {
      enable = true;
      platformTheme = {
        name = "gnome";
      };
      style.name = "adwaita-dark";
    };
  };
}
