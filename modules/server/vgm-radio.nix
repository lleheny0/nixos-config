{ pkgs, ... }:

{
  imports = [
    ./caddy.nix
    ./icecast.nix
    ./liquidsoap.nix
    ./vgm-backup.nix
    ./vgm-scripts.nix
  ];

  users.users.luke.packages = with pkgs; [
    mp3gain
  ];
}
