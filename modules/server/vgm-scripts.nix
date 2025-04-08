{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    (writeShellApplication {
      name = "vu";
      text = ''
        find /vgm/Music -type f -name "*.mp3" > /vgm/playlist.txt
        cat /vgm/playlist.txt | wc -l
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
}
