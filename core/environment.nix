{ pkgs, ... }:

{
  environment.shellAliases = {
    dw = "dconf watch /";
    ll = "ls -alF";
    ir = "exiftool '-filename<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le' .";
    mb = "pushd /home/luke > /dev/null && rm -rf .mozilla.backup && mkdir .mozilla.backup && cp -r .mozilla/* .mozilla.backup && popd > /dev/null";
    nb = "sudo nixos-rebuild boot";
    nf = "mb && nu && nb";
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
