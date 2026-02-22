{
  imports = [
    ../core/desktop
    ../modules/desktop/multimedia.nix
    ../modules/desktop/gaming
    ../modules/desktop/social.nix
    ../modules/development/javascript.nix
    ../modules/hardware/ecotank.nix
    ../modules/hardware/multi-monitor.nix
    ../modules/server/snapcast/client.nix
  ];

  # boot.kernelParams = [ "amdgpu.dcdebugmask=0x410" ];

  services.keyd.keyboards.default.settings.main."`" = "delete";
  services.keyd.keyboards.default.settings.aux."`" = "`";
  services.keyd.keyboards.default.settings.alt.esc = "A-`";
  services.keyd.keyboards.default.settings.meta.esc = "M-`";

  networking.hostName = "desktop";
}
