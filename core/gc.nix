{ config, lib, pkgs, ... }:

{
  options.gc = {
    deleteOlderThan = lib.mkOption {
      type = lib.types.str;
      default = "30d";
      description = "The age after which old profiles will be deleted";
    };
  };

  config = {
    nix.settings = {
      auto-optimise-store = true;
    };

    systemd.services.nix-gc-system = {
      description = "System garbage collection";
      path = with pkgs; [ nix ];
      script = "nix-collect-garbage --delete-older-than ${config.gc.deleteOlderThan}";
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
      script = "nix-collect-garbage --delete-older-than ${config.gc.deleteOlderThan}";
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
  };
}
