{ pkgs, ... }:

{
  nix.settings = {
    auto-optimise-store = true;
  };

  systemd.services.nix-gc-system = {
    description = "System garbage collection";
    path = with pkgs; [ nix ];
    script = "nix-collect-garbage --delete-older-than 30d";
    serviceConfig = {
      Type = "oneshot";
    };
  };
  systemd.timers.nix-gc-system = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "weekly";
      Persistent = true;
      Unit = "nix-gc-system.service";
    };
  };

  systemd.services.nix-gc-user = {
    description = "User garbage collection";
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
      OnCalendar = "weekly";
      Persistent = true;
      Unit = "nix-gc-user.service";
    };
  };
}
