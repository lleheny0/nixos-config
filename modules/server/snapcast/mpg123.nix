{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    mpg123
    (writeShellApplication {
      name = "vs";
      runtimeInputs = [ mpg123 ];
      text = ''
        mpg123 -s https://leheny.ddns.net/vgmradio > /run/snapcast
      '';
    })
  ];
}
