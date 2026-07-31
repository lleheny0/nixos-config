{ pkgs, ... }:

# Prerequisites:
# 1. Mount second drive to /backup and set luke:users as owner
# 2. Create both /www and /vgm and set luke:users as owner
# 3. Copy all music to Music directory in /vgm
# 4. Clone vgm-radio repo in /www
# 5. Create /backup/Music directory

{
  imports = [
    ./backup.nix
    ./caddy.nix
    ./commands.nix
    ./icecast.nix
    ./liquidsoap.nix
    ./namecheap.nix
  ];
}
