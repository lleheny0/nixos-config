{ pkgs, ... }:

{
  environment.shellAliases = {
    dw = "dconf watch /";
    ll = "ls -alF";
    ir = "exiftool '-filename<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le' .";
    mb = "cd /home/luke && rm -rf .mozilla.backup && mkdir .mozilla.backup && cp -r .mozilla/* .mozilla.backup";
    nb = "sudo nixos-rebuild boot";
    ncu = "nix-collect-garbage --delete-older-than 30d";
    ncs = "sudo nix-collect-garbage --delete-older-than 30d";
    nf = "mb && nu && ncs && ncu && nb";
    nr = "sudo nixos-rebuild switch";
    nu = "sudo nix-channel --update";
  };

  environment.variables = {
    BROWSER = "firefox";
    EDITOR = "vim";
  };

  environment.systemPackages = with pkgs; [
  ];
}
