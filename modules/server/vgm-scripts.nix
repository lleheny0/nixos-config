{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    (writeShellApplication {
      name = "vu";
      runtimeInputs = [ mpc ];
      text = ''
        cd /vgm
        sudo systemctl stop vgm-stream
        rm ./playlist.txt
        find ~+ -mindepth 2 | grep mp3 >> ./playlist.txt
        sudo systemctl start vgm-stream
        cd ~-
      '';
    })
    (writeShellApplication {
      name = "vg";
      runtimeInputs = [ mp3gain ];
      text = ''
        mpc stop
        find "$(pwd)" -type f -iname '*.mp3' -exec mp3gain -r -c -s i {} +
      '';
    })
  ];
}
