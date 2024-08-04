{ config, pkgs, ... }:

{
  imports = [ ./home ];

  users.users.luke = {
    isNormalUser = true;
    description = "Luke";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      adwaita-qt
      btop
      firefox
      g4music
      git
      dconf-editor
      gnome-tweaks
      gnomeExtensions.appindicator
      gnomeExtensions.dash-to-dock
      helvum
      home-manager
      mpv
      mullvad-vpn
      obs-studio
      obs-studio-plugins.obs-vaapi
      openzone-cursors
      pavucontrol
      signal-desktop
      spotify
      vim
      vscode
      webcord
    ];
  };
}
