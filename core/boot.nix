{ config, ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    extraModprobeConfig = ''
      options snd_hda_intel power_save=0
    '';
  };
}
