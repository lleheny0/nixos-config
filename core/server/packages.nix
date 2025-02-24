{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    jdk21_headless
  ];
}
