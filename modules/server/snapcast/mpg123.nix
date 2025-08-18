{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    mpg123
    (writeShellApplication {
      name = "svgm";
      runtimeInputs = [ mpg123 tmux ];
      text = ''
        tmux new-session -d -s vgmradio 'mpg123 -s https://leheny.ddns.net/vgmradio > /run/snapcast'
        tmux send-keys -t vgmradio 'u--------------------u' Enter
        tmux attach -t vgmradio
      '';
    })
    (writeShellApplication {
      name = "wmvy";
      runtimeInputs = [ mpg123 tmux ];
      text = ''
        tmux new-session -d -s wmvy 'mpg123 -s https://mvyradio.streamguys1.com/mvy-mp3 > /run/snapcast'
        tmux send-keys -t wmvy 'u--------------------u' Enter
        tmux attach -t wmvy
      '';
    })
  ];
}
