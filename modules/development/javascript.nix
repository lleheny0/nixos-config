{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    nodejs
  ];

  home-manager.users.luke.home.file.".npmrc".text = ''
    prefix=/home/luke/.npm-global
  '';
}
