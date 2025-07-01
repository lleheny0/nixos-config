let
  wallpaper = "file://" + ./wallpaper.jpg;
in
{
  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = wallpaper;
      picture-uri-dark = wallpaper;
    };
    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = wallpaper;
      picture-uri-dark = wallpaper;
    };
  };
}
