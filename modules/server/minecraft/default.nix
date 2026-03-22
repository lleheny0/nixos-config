# Prerequisites:
# 1. Mount second drive to /backup and set luke:users as owner
# 2. Create /home/luke/Minecraft directory
# 3. Create /home/luke/Backups/Minecraft directory
# 4. Create /backups/Minecraft directory

{
  imports = [
    ./backup.nix
    ./server.nix
  ];
}
