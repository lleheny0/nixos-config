{ pkgs, ... }:

# Scripts to lock and unlock settings for quick testing

{
  users.users.luke.packages = with pkgs; [
    (writeShellApplication {
      name = "vsu";
      text = ''
        cd /home/luke/.config/Code/User
        mv settings.json settings.json.link
        cp settings.json.link settings.json
        cd ~-
      '';
    })
    (writeShellApplication {
      name = "vsl";
      text = ''
        cd /home/luke/.config/Code/User
        rm settings.json
        mv settings.json.link settings.json
        cd ~-
      '';
    })
  ];
}
