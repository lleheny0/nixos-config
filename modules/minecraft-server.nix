{ pkgs, ... }:

{
  imports = [
    ./minecraft-backup.nix
  ];

  users.users.luke.packages = with pkgs; [
    jdk21_headless
  ];
}
