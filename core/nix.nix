{ pkgs, ... }:

{
  nix.settings = {
    auto-optimise-store = true;
  };

  systemd.services.nix-gc-system = {
    description = "Garbage collection for system profiles";
    path = with pkgs; [ nix ];
    script = "nix-collect-garbage --delete-older-than 30d";
    serviceConfig = {
      Type = "oneshot";
    };
  };
  systemd.timers.nix-gc-system = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      Persistent = true;
      Unit = "nix-gc-system.service";
    };
  };

  systemd.services.nix-gc-user = {
    description = "Garbage collection for user profiles";
    path = with pkgs; [ nix ];
    script = "nix-collect-garbage --delete-older-than 30d";
    serviceConfig = {
      Type = "oneshot";
      User = "luke";
    };
  };
  systemd.timers.nix-gc-user = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      Persistent = true;
      Unit = "nix-gc-user.service";
    };
  };
}
