{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    mp3gain
    (writeShellApplication {
      name = "vu";
      text = ''
        filter="''${1:-}"
        find /vgm/Music -type f -name "*.mp3" | grep "$filter" > /vgm/playlist.txt
        wc -l < /vgm/playlist.txt
      '';
    })
    (writeShellApplication {
      name = "vg";
      runtimeInputs = [ mp3gain ];
      text = ''
        find ~+ -type f -name "*.mp3" -exec mp3gain -r -c -s i {} +
      '';
    })
  ];

  environment.shellAliases = {
    vf = "cd /vgm/Music";
  };
}
