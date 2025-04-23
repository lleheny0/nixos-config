{
  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };
    printing.enable = true;
  };

  home-manager.users.luke.qt = {
    enable = true;
    platformTheme = {
      name = "gnome";
    };
    style.name = "adwaita-dark";
  };
}
