{ lib, pkgs, ... }:

{
  environment.shellAliases = {
    dw = "dconf watch /";
    ll = "ls -alF";
    ir = "exiftool '-filename<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le' .";
    nb = "sudo nixos-rebuild boot";
    nr = "sudo nixos-rebuild switch";
    nu = "sudo nix-channel --update";
  };

  environment.variables = {
    EDITOR = "vim";
  };

  environment.systemPackages = with pkgs; [
  ];
}
