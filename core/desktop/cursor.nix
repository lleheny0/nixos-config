{ pkgs, lib, ... }:

let
  kde-classic-cursors = pkgs.stdenv.mkDerivation {
    name = "kde-classic-cursors";
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
      name = "KDE_Classic";
      package = kde-classic-cursors;
      size = 24;
      gtk.enable = true;
      x11.enable = true;
    };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = lib.mkDefault "KDE_Classic";
      };
    };
  };
}
