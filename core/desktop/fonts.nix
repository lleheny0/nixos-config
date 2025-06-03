{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      fantasque-sans-mono
      freefont_ttf
      noto-fonts-emoji
    ];
  };
}
