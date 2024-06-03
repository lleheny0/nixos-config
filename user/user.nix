{ config, pkgs, ... }:

let
  stable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/24.05)
    { config = config.nixpkgs.config; };
in
{
  imports = [ ./home ];

  users.users.luke = {
    isNormalUser = true;
    description = "Luke";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      adwaita-qt
      amberol
      appimage-run
      stable.cemu
      firefox
      fragments
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
