{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    audacity
  ];

  home-manager.users.luke.xdg.desktopEntries.audacity = {
    name = "Audacity";
    exec = "GDK_BACKEND=x11 audacity";
    icon = "audacity";
    type = "Application";
    categories = [
      "Audio"
      "AudioVideo"
    ];
  };
}
