{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      fantasque-sans-mono
      fira-code
      fixedsys-excelsior
      freefont_ttf
      noto-fonts-emoji
      terminus_font_ttf
      uni-vga
    ];

    fontconfig = {
      enable = true;
      useEmbeddedBitmaps = true;
      defaultFonts = {
        monospace = [ "Fira Code" ];
        sansSerif = [ "FreeSans" ];
        serif = [ "FreeSerif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
