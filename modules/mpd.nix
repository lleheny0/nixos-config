{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mp3gain
    mpc
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

  services.mpd = {
    enable = true;
    musicDirectory = "/home/luke/Music/VGM";
    extraConfig = ''
      audio_output {
        type "shout"
        encoding "mp3"
        name "VGM Radio"
        host "localhost"
        port "8000"
        mount "/vgmradio"
        password set_password_here
        bitrate "128"
        format "44100:16:1"
        protocol "icecast2"
        always_on "yes"
      }
      replaygain "track"
    '';
  };
}
