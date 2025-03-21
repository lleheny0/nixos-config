{ lib, pkgs, ... }:

{
  environment = {
    shellAliases = {
      ll = "ls -alF";
      nb = "sudo nixos-rebuild boot";
      nr = "sudo nixos-rebuild switch";
      nu = "sudo nix-channel --update";
    };

    variables = {
      EDITOR = "vim";
    };
  };
}
