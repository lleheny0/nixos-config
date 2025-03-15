{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    nodejs
  ];
}
