{ pkgs, ... }:

{
  systemd.services.vgm-backup = {
    description = "VGM backup";
    script = ''
      rm -r /backup/Music
      cp -r /vgm/Music /backup
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
