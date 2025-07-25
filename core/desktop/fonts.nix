{ config, lib, pkgs, ... }:

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

  sf-mono = pkgs.stdenv.mkDerivation {
    name = "sf-mono";
    src = pkgs.fetchFromGitHub {
      owner = "supercomputra";
      repo = "SF-Mono-Font";
      rev = "master";
      hash = "sha256-3wG3M4Qep7MYjktzX9u8d0iDWa17FSXYnObSoTG2I/o=";
    };
    installPhase = ''
      mkdir -p $out/share/fonts
      cp -r $src/*.otf $out/share/fonts
    '';
  };

  consolas = pkgs.stdenv.mkDerivation {
    name = "consolas";
    src = pkgs.fetchFromGitHub {
      owner = "pensnarik";
      repo = "consolas-font";
      rev = "master";
      hash = "sha256-a0lx1X0SrLhNeBDl+NGWcrVHehd4UDaFUEl86hvj98E=";
    };
    installPhase = ''
      mkdir -p $out/share/fonts
      cp -r $src/*.ttf $out/share/fonts
    '';
  };
in
{
  options.vscode = {
    fontSize = lib.mkOption {
      type = lib.types.float;
      default = 14.0;
      description = "VS Code font size";
    };
  };

  config = {
    fonts = {
      packages = with pkgs; [
        anonymousPro
        borg-sans-mono
        cascadia-code
        consolas
        fantasque-sans-mono
        fira-code
        fragment-mono
        freefont_ttf
        gyre-fonts
        hack-font
        ibm-plex
        inconsolata
        jetbrains-mono
        monaco
        monaco-fira-code
        noto-fonts-emoji
        recursive
        roboto-mono
        sf-mono
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
      "editor.fontSize" = config.vscode.fontSize;
      "editor.fontWeight" = "bold";
      "terminal.integrated.fontSize" = config.vscode.fontSize;
      "terminal.integrated.fontWeight" = "bold";
      "terminal.integrated.lineHeight" = 1;
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
  };
}
