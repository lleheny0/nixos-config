{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    adwaita-qt
    dconf-editor
    gnome-tweaks
  ];

  environment.gnome.excludePackages = with pkgs; [
    epiphany
    geary
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-connections
    gnome-console
    gnome-contacts
    gnome-logs
    gnome-maps
    gnome-music
    gnome-online-accounts
    gnome-tour
    seahorse
    yelp
  ];
}
