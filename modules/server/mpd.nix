{ pkgs, ... }:

{
  services.mpd = {
    enable = true;
    user = "luke";
    musicDirectory = "/home/luke/Music/VGM";
    extraConfig = ''
      audio_output {
        type "shout"
        encoding "mp3"
        name "VGM Radio"
        host "localhost"
        port "8000"
        mount "/vgmradio"
        password " "
        bitrate "128"
        format "44100:16:1"
        protocol "icecast2"
        always_on "yes"
      }
      replaygain "track"
    '';
  };
}
