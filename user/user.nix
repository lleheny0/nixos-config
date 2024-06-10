{ config, pkgs, ... }:

{
  imports = [ ./home ];

  users.users.luke = {
    isNormalUser = true;
    description = "Luke";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      adwaita-qt
      appimage-run
      cemu
      firefox
      fragments
      g4music
      git
      glfw-wayland-minecraft
      gnome.dconf-editor
      gnome3.gnome-tweaks
      gnomeExtensions.appindicator
      gnomeExtensions.dash-to-dock
      helvum
      home-manager
      joycond-cemuhook
      mpv
      mullvad-vpn
      obs-studio
      obs-studio-plugins.obs-vaapi
      openzone-cursors
      pavucontrol
      prismlauncher
      protonup-ng
      signal-desktop
      spotify
      vim
      vscode
      webcord
    ];
  };
}
