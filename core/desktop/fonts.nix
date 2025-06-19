{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
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
        monospace = [ "JetBrains Mono" ];
        sansSerif = [ "FreeSans" ];
        serif = [ "FreeSerif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
