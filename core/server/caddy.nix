{ pkgs, lib, ... }:

{
  services.caddy = {
    enable = true;
    virtualHosts."lukeleheny.com".extraConfig = ''
      root * /home/luke/Projects/vgm-radio
      file_server
      php_fastcgi unix//run/phpfpm/caddy.sock
    '';
  };

  system.activationScripts.homePermissions = ''
    chmod 755 /home/luke
  '';

  systemd.services.caddy.serviceConfig.ProtectHome = lib.mkForce false;

  networking.firewall.allowedTCPPorts = [ 80 443 ];

  users.users.caddy.extraGroups = [ "phpfpm" ];

  environment.systemPackages = with pkgs; [
    php
  ];

  services.phpfpm.pools.caddy = {
    user = "caddy";
    phpPackage = pkgs.php;
    settings = {
      "listen.owner" = "caddy";
      "listen" = "/run/phpfpm/caddy.sock";
      "pm" = "dynamic";
      "pm.max_children" = 32;
      "pm.start_servers" = 2;
      "pm.min_spare_servers" = 2;
      "pm.max_spare_servers" = 4;
      "pm.max_requests" = 500;
    };
  };
}
