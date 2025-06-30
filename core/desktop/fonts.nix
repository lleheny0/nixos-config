{ pkgs, ... }:

let
  monospace = "Cascadia Code";
  monospacePx = 14;
  monospacePt = 12;
  sansSerif = "FreeSans";
  sansSerifPt = 11;
  serif = "FreeSerif";
  emoji = "Noto Color Emoji";
in
{
  fonts = {
    packages = with pkgs; [
      cascadia-code
      fixedsys-excelsior
      freefont_ttf
      jetbrains-mono
      noto-fonts-emoji
      uni-vga
    ];

    fontconfig = {
      enable = true;
      useEmbeddedBitmaps = true;
      defaultFonts = {
        monospace = [ monospace ];
        sansSerif = [ sansSerif ];
        serif = [ serif ];
        emoji = [ emoji ];
      };
    };
  };

  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/interface" = {
      document-font-name = "${sansSerif} ${toString sansSerifPt}";
      font-name = "${sansSerif} ${toString sansSerifPt}";
      monospace-font-name = "${monospace} Bold ${toString monospacePt}";
    };
  };

  home-manager.users.luke.programs.vscode.profiles.default.userSettings = {
    "editor.fontFamily" = monospace;
    "editor.fontLigatures" = true;
    "editor.fontSize" = monospacePx;
    "editor.fontWeight" = "bold";
    "terminal.integrated.fontFamily" = monospace;
    "terminal.integrated.fontSize" = monospacePx;
    "terminal.integrated.fontWeight" = "bold";
  };
}
