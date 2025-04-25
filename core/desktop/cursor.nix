{ pkgs, lib, ... }:

let
  themeName = "KDE_Classic";
  packageName = "kde-classic-cursors";

  package = pkgs.stdenv.mkDerivation {
    name = packageName;
    src = pkgs.fetchFromGitHub {
      owner = "KDE";
      repo = "oxygen";
      rev = "master";
      hash = "sha256-jNAQ+QTA0mIuXWbE8QRsFagfJcCbJH/c2rJG3nTAeP0=";
    };

    installPhase = ''
      mkdir -p $out/share/icons/KDE_Classic
      cp -r $src/cursors/KDE_Classic/* $out/share/icons/KDE_Classic/
    '';
  };
in {
  home-manager.users.luke = {
    home.pointerCursor = {
      name = themeName;
      package = package;
      size = 24;
      gtk.enable = true;
      x11.enable = true;
    };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = lib.mkDefault themeName;
      };
    };
  };
}
