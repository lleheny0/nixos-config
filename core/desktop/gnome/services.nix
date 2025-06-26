{
  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };
    printing.enable = true;
  };
}
