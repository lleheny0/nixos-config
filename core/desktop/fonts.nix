{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      fantasque-sans-mono
      freefont_ttf
      jetbrains-mono
      noto-fonts-emoji
    ];

    fontconfig = {
      enable = true;
      useEmbeddedBitmaps = true;
      defaultFonts = {
        monospace = [ "JetBrains Mono" ];
        sansSerif = [ "FreeSans" ];
        serif = [ "FreeSerif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
