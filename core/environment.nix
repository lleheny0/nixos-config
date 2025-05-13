{ lib, pkgs, ... }:

{
  environment = {
    shellAliases = {
      ll = "ls -alF";
      nb = "sudo nixos-rebuild boot";
      np = "cd /home/luke/Projects/nixos-config && git pull && cd ~-";
      ns = "sudo nixos-rebuild switch";
      nu = "sudo nix-channel --update";
      sv = "ssh leheny.ddns.net";
    };

    variables = {
      EDITOR = "vim";
    };
  };

  programs.bash.promptInit = ''
    PS1='\[\e[96m\]\u\[\e[0m\] \[\e[92m\]\h\[\e[0m\] \[\e[93m\]\w\[\e[0m\] > '
  '';
}
