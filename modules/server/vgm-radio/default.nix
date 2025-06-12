{ pkgs, ... }:

{
  imports = [
    ./backup.nix
    ./caddy.nix
    ./commands.nix
    ./icecast.nix
    ./liquidsoap.nix
  ];
}
