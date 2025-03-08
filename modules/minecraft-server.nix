{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    jdk21_headless
  ];

  systemd.services.minecraft-backup = {
    description = "Backup the Minecraft folder";
    path = with pkgs; [
      gnutar
      gzip
    ];
    script = ''
      tar -czf "/home/luke/Backups/Minecraft/$(date +%Y-%m-%d).tar.gz" -C /home/luke/Minecraft .
      ls -F /home/luke/Backups/Minecraft/*.tar.gz | head -n -7 | xargs -r rm
      # TODO: Set this up after figuring out the secondary drive
      # cp -rv /home/luke/Backups/Minecraft /mnt/hdd/backups
      # ls -F /mnt/hdd/Backups/Minecraft/*.tar.gz | head -n -30 | xargs -r rm
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
