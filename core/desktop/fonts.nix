{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      anonymousPro
      cascadia-code
      fantasque-sans-mono
      fira-code
      fragment-mono
      freefont_ttf
      gyre-fonts
      ibm-plex
      inconsolata
      jetbrains-mono
      noto-fonts-emoji
      roboto-mono
      source-code-pro
      uni-vga
    ];

    fontconfig = {
      enable = true;
      useEmbeddedBitmaps = true;
      defaultFonts = {
        sansSerif = [ "FreeSans" ];
        serif = [ "Tex Gyre Termes" ];
        monospace = [ "Fragment Mono" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };

  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/interface" = {
      document-font-name = "FreeSans 11";
      font-name = "FreeSans 11";
      monospace-font-name = "Fragment Mono Bold 11";
    };
  };

  home-manager.users.luke.programs.vscode.profiles.default.userSettings = {
    "editor.fontFamily" = "Fragment Mono";
    "editor.fontLigatures" = true;
    "editor.fontSize" = 14;
    "editor.fontWeight" = "bold";
    "terminal.integrated.fontWeight" = "bold";
  };

  home-manager.users.luke.programs.alacritty.settings.font = {
    size = 12.0;
    normal = {
      family = "VGA";
      style = "Regular";
    };
    bold = {
      style = "Regular";
    };
    italic = {
      style = "Regular";
    };
    bold_italic = {
      style = "Regular";
    };
  };

  environment.variables.FREETYPE_PROPERTIES = "cff:no-stem-darkening=0 autofitter:no-stem-darkening=0";
}
