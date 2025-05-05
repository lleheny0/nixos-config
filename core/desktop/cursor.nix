{ pkgs, lib, ... }:

let
  name = "KDE_Classic";
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
      ln -sf bottom_left_corner sw-resize
      ln -sf bottom_right_corner se-resize
      ln -sf bottom_side s-resize
      ln -sf closedhand grabbing
      ln -sf cross cell
      ln -sf fleur all-scroll
      ln -sf fleur move
      ln -sf forbidden dnd-no-drop
      ln -sf forbidden no-drop
      ln -sf forbidden not-allowed
      ln -sf half-busy progress
      ln -sf hand1 zoom-in
      ln -sf hand1 zoom-out
      ln -sf hand2 pointer
      ln -sf left_ptr alias
      ln -sf left_ptr context-menu
      ln -sf left_ptr copy
      ln -sf left_ptr default
      ln -sf left_ptr dnd-ask
      ln -sf left_ptr dnd-copy
      ln -sf left_ptr dnd-link
      ln -sf left_ptr dnd-move
      ln -sf left_ptr dnd-none
      ln -sf left_side w-resize
      ln -sf openhand grab
      ln -sf right_side e-resize
      ln -sf size_bdiag nesw-resize
      ln -sf size_fdiag nwse-resize
      ln -sf sb_h_double_arrow ew-resize
      ln -sf sb_v_double_arrow ns-resize
      ln -sf split_h col-resize
      ln -sf split_v row-resize
      ln -sf top_left_corner nw-resize
      ln -sf top_right_corner ne-resize
      ln -sf top_side n-resize
      ln -sf xterm text
      ln -sf xterm vertical-text
    '';
  };
in {
  home-manager.users.luke = {
    home.pointerCursor = {
      name = name;
      package = package;
      size = 24;
      gtk.enable = true;
      x11.enable = true;
    };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        cursor-theme = lib.mkDefault name;
      };
    };
  };
}
