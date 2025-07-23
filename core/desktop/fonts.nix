{ pkgs, ... }:

let
  monaco = pkgs.stdenv.mkDerivation {
    name = "monaco";
    src = pkgs.fetchFromGitHub {
      owner = "taodongl";
      repo = "monaco.ttf";
      rev = "master";
      hash = "sha256-aUkI8BUJ1wXj9mPyK8WvpzpUfT8UbVsbAxKB9QKwtk0=";
    };
    installPhase = ''
      mkdir -p $out/share/fonts
      cp $src/monaco.ttf $out/share/fonts
    '';
  };

  monaco-fira-code = pkgs.stdenv.mkDerivation {
    name = "monaco-fira-code";
    src = pkgs.fetchFromGitHub {
      owner = "muhac";
      repo = "monaco-fira-code-ligatures";
      rev = "main";
      hash = "sha256-pwII63MuDiFkpfBGeslfiFFMlcO4Uc8tJ6+DXOzb3gE=";
    };
    installPhase = ''
      mkdir -p $out/share/fonts
      cp -r $src/MonacoFiraCode/* $out/share/fonts
    '';
  };
in
{
  fonts = {
    packages = with pkgs; [
      anonymousPro
      borg-sans-mono
      cascadia-code
      fantasque-sans-mono
      fira-code
      fragment-mono
      freefont_ttf
      gyre-fonts
      ibm-plex
      inconsolata
      jetbrains-mono
      monaco
      monaco-fira-code
      noto-fonts-emoji
      recursive
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
        monospace = [ "Monaco Fira Code" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };

  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/interface" = {
      document-font-name = "FreeSans 11";
      font-name = "FreeSans 11";
      monospace-font-name = "Monaco Fira Code Bold 10";
    };
  };

  home-manager.users.luke.programs.vscode.profiles.default.userSettings = {
    "editor.fontFamily" = "Monaco Fira Code";
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
