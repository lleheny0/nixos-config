let
  wallpaper = "file://" + ./wallpaper.png;
  color = "#222226";
in
{
  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = wallpaper;
      picture-uri-dark = wallpaper;
      primary-color = color;
      secondary-color = color;
    };
    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = wallpaper;
      picture-uri-dark = wallpaper;
      primary-color = color;
      secondary-color = color;
    };
  };
}
