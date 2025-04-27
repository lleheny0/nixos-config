{ pkgs, lib, ... }:

let
  themeName = "KDE_Classic";
  packageName = "kde-classic-cursors";

  package = pkgs.stdenv.mkDerivation {
    name = "cursor";
    src = pkgs.fetchFromGitHub {
      owner = "KDE";
      repo = "oxygen";
      rev = "master";
      hash = "sha256-jNAQ+QTA0mIuXWbE8QRsFagfJcCbJH/c2rJG3nTAeP0=";
    };

    installPhase = ''
      mkdir -p $out/share/icons/KDE_Classic
      cp -r $src/cursors/KDE_Classic/* $out/share/icons/KDE_Classic/
      cd $out/share/icons/KDE_Classic/cursors
      chmod +w .
      ln -sf top_side n-resize
      ln -sf right_side e-resize
      ln -sf bottom_side s-resize
      ln -sf left_side w-resize
      ln -sf top_right_corner ne-resize
      ln -sf top_left_corner nw-resize
      ln -sf bottom_right_corner se-resize
      ln -sf bottom_left_corner sw-resize
      ln -sf size_hor ew-resize
      ln -sf size_ver ns-resize
      ln -sf pointer zoom-in
      ln -sf pointer zoom-out
      ln -sf not-allowed no-drop
      ln -sf openhand grab
      ln -sf closedhand grabbing
      ln -sf fleur move
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
