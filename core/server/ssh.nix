{ config, lib, ... }:

{
  options.ssh = {
    usePasswordAuth = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Whether to use SSH password authentication";
    };
  };

  config = {
    services.openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = config.ssh.usePasswordAuth;
        KbdInteractiveAuthentication = config.ssh.usePasswordAuth;
      };
    };

    services.fail2ban.enable = true;
  };
}
