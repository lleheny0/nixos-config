{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    audacity
    beeper
    chromium
    discord
    exiftool
    ffmpeg
    firefox
    fragments
    dconf-editor
    gnome-tweaks
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    helvum
    libva-utils
    mullvad-vpn
    obs-studio
    obs-studio-plugins.obs-vaapi
    openzone-cursors
    pavucontrol
    radeontop
    signal-desktop
    spotify
    # texliveFull
    vlc
    vscode
  ];
}
