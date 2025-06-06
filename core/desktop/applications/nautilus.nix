{ pkgs, ... }:

{
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };

  nixpkgs.overlays = [
    (final: prev: {
      nautilus = prev.nautilus.overrideAttrs (nprev: {
        buildInputs =
          nprev.buildInputs
          ++ (with pkgs.gst_all_1; [
            gst-plugins-good
            gst-plugins-bad
          ]);
      });
    })
  ];

  home-manager.users.luke.dconf.settings = {
    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };
    "org/gnome/nautilus/list-view" = {
      default-zoom-level = "small";
    };
    "org/gnome/nautilus/preferences" = {
      date-time-format = "detailed";
      default-folder-viewer = "icon-view";
    };
  };
}
