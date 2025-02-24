{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  services.printing.enable = true;

  home-manager.users.luke.qt = {
    enable = true;
    platformTheme = {
      name = "gnome";
    };
    style.name = "adwaita-dark";
  };
}
