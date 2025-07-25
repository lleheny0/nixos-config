{
  environment.shellAliases = {
    ll = "ls -alF";
    nb = "sudo nixos-rebuild boot";
    np = "cd /home/luke/Projects/nixos-config && git pull && cd ~-";
    nr = "sudo nixos-rebuild switch --rollback";
    ns = "sudo nixos-rebuild switch";
    nu = "sudo nix-channel --update";
  };

  programs.bash.promptInit = ''
    PS1='\[\e[96m\]\u\[\e[0m\] \[\e[92m\]\h\[\e[0m\] \[\e[93m\]\w\[\e[0m\] > '
  '';
}
