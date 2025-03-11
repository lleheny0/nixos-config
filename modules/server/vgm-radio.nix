{ pkgs, ... }:

{
  imports = [
    ./httpd.nix
    ./icecast.nix
    ./mpd.nix
    ./vgm-backup.nix
    ./vgm-scripts.nix
  ];

  users.users.luke.packages = with pkgs; [
    mpc
    mp3gain
  ];
}
