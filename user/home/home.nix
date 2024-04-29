{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
    ./dconf.nix
    ./programs
  ];

  home-manager = {
    users.luke = { pkgs, ... }: {
      home.username = "luke";
      home.homeDirectory = "/home/luke";
      home.stateVersion = "23.11";
      home.packages = [];

      programs.home-manager.enable = true;

      # programs.vscode = {
      #   enable = true;
      #   userSettings = {
      #     "editor.fontFamily" = "Comic Mono";
      #     "editor.mouseWheelScrollSensitivity" = 0.25;
      #     "window.menuBarVisibility" = "hidden";
      #   };
      # };
    };
  };
}

