{ pkgs, ... }:

# Note: If GDM seems to not respect monitors.xml, try removing the line
# containing <layoutmode>logical</layoutmode>

let
  monitorsXmlContent = builtins.readFile /home/luke/.config/monitors.xml;
  monitorsConfig = pkgs.writeText "gdm_monitors.xml" monitorsXmlContent;
in
{
  systemd.tmpfiles.rules = [
    "L+ /run/gdm/.config/monitors.xml - gdm gdm - ${monitorsConfig}"
  ];
}
