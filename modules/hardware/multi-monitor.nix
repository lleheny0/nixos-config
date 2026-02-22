{ pkgs, ... }:

# Note: If GDM seems to not respect monitors.xml, try removing the line
# containing <layoutmode>logical</layoutmode>

let
  monitorsPath = /home/luke/.config/monitors.xml;
  monitorsContent = if builtins.pathExists monitorsPath then
    builtins.readFile monitorsPath
  else "";
  monitorsConfig = pkgs.writeText "gdm_monitors.xml" monitorsContent;
in
{
  systemd.tmpfiles.rules = [
    "L+ /run/gdm/.config/monitors.xml - - - - ${monitorsConfig}"
    "L+ /var/lib/gdm/seat0/config/monitors.xml - - - - ${monitorsConfig}"
  ];
}
