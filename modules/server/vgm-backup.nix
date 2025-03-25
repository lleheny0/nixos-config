{ pkgs, ... }:

{
  systemd.services.vgm-backup = {
    description = "Backup the Music folder";
    script = ''
      cp -rnv /home/luke/Music /backup
    '';
    serviceConfig = {
      Type = "oneshot";
      User = "luke";
    };
  };
  systemd.timers.vgm-backup = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "Mon *-*-* 05:00:00";
      Persistent = true;
      Unit = "vgm-backup.service";
    };
  };
}
