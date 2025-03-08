{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    (writeShellApplication {
      name = "vgmupdate";
      runtimeInputs = [ mpc ];
      text = ''
        mpc stop -q
        mpc clear -q
        mpc update --wait -q
        cd /home/luke/Music/VGM
        find -- * -mindepth 1 | grep mp3 | mpc --wait add
        mpc play
        sudo systemctl restart mpd

        FILE_COUNT=$(find -- * -mindepth 1 | grep -c mp3)
        MPC_COUNT=$(mpc playlist | wc -l)
        echo "File count:     $FILE_COUNT"
        echo "Playlist count: $MPC_COUNT"
        echo "Done!"
      '';
    })
    (writeShellApplication {
      name = "vgmgain";
      runtimeInputs = [ mp3gain ];
      text = ''
        mpc stop
        find "$(pwd)" -type f -iname '*.mp3' -exec mp3gain -r -c -s i {} +
        mpc play
      '';
    })
  ];
}
