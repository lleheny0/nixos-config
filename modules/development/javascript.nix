{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    nodejs
  ];

  home-manager.users.luke.home.file.".npmrc".source = ./dotfiles/.npmrc;

  home-manager.users.luke.home.sessionPath = [
    "/home/luke/.npm-global"
  ];
}
