{ pkgs, ... }:

{
  systemd.services.botw-backup = {
    description = "BOTW save backup";
    path = with pkgs; [ gnutar gzip ];
    script = ''
      cd /home/luke/.local/share/Cemu/mlc01/usr/save/00050000/101c9400/user/80000001
      tar -czf "/home/luke/Backups/BOTW/$(date +%Y-%m-%d).tar.gz" *
      ls -F /home/luke/Backups/BOTW/*.tar.gz | head -n -10 | xargs -r rm
    '';
    serviceConfig = {
      Type = "oneshot";
      User = "luke";
    };
  };
  systemd.timers.botw-backup = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "*-*-* 04:00:00";
      Persistent = true;
      Unit = "botw-backup.service";
    };
  };
}
