{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      cascadia-code
      fantasque-sans-mono
      fragment-mono
      freefont_ttf
      gyre-fonts
      jetbrains-mono
      noto-fonts-emoji
      uni-vga
    ];

    fontconfig = {
      enable = true;
      useEmbeddedBitmaps = true;
      defaultFonts = {
        sansSerif = [ "Tex Gyre Heros" ];
        serif = [ "Tex Gyre Termes" ];
        monospace = [ "Fragment Mono" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };

  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/interface" = {
      document-font-name = "Tex Gyre Heros 11";
      font-name = "Tex Gyre Heros 11";
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
}
