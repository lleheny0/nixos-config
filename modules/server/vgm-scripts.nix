{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    (writeShellApplication {
      name = "vu";
      runtimeInputs = [ mpc ];
      text = ''
        cd /home/luke/Music
        mpc stop -q
        mpc clear -q
        mpc update --wait -q
        find -- * -mindepth 1 | grep mp3 | mpc --wait add
        mpc play
        sudo systemctl restart mpd

        FILE_COUNT=$(find -- * -mindepth 1 | grep -c mp3)
        MPC_COUNT=$(mpc playlist | wc -l)
        echo "File count:     $FILE_COUNT"
        echo "Playlist count: $MPC_COUNT"
        echo "Done!"
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
