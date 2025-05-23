{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    spotify
  ];

  home-manager.users.luke.xdg.desktopEntries.spotify = {
    name = "Spotify";
    genericName = "Music Player";
    exec = "spotify --ozone-platform=x11 %U";
    icon = "spotify-client";
    mimeType = [ "x-scheme-handler/spotify" ];
    categories = [ "Audio" "Music" "Player" "AudioVideo" ];
  };
}
