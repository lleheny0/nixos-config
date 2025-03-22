{ pkgs, ... }:

{
  systemd.services.vgm-backup = {
    description = "Backup the Music folder";
    script = ''
      # TODO: Set this up after figuring out the secondary drive
      # mv /mnt/hdd/backups/music /mnt/hdd/backups/music.old
      # cp -r /home/luke/music /mnt/hdd/backups/music
      # rm -r /mnt/hdd/backups/music.old
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
