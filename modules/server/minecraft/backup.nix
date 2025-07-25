{ pkgs, ... }:

{
  systemd.services.minecraft-backup = {
    description = "Minecraft world backup";
    path = with pkgs; [ gnutar gzip ];
    script = ''
      cd /home/luke/Minecraft
      tar -czf "/home/luke/Backups/Minecraft/$(date +%Y-%m-%d).tar.gz" *
      ls -F /home/luke/Backups/Minecraft/*.tar.gz | head -n -10 | xargs -r rm
      cp -rnv /home/luke/Backups/Minecraft /backup
      ls -F /backup/Minecraft/*.tar.gz | head -n -10 | xargs -r rm
    '';
    serviceConfig = {
      Type = "oneshot";
      User = "luke";
    };
  };
  systemd.timers.minecraft-backup = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "*-*-* 04:00:00";
      Persistent = true;
      Unit = "minecraft-backup.service";
    };
  };
}
