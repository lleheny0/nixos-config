{ pkgs, ... }:

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
        monospace = [ "Cascadia Code" ];
        sansSerif = [ "FreeSans" ];
        serif = [ "FreeSerif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
