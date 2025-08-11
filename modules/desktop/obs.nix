{ config, pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    obs-studio
    obs-studio-plugins.obs-vaapi
  ];

  boot = {
    kernelModules = [
      "v4l2loopback"
    ];
    extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
    extraModprobeConfig = ''
      options v4l2loopback devices=1 video_nr=1 card_label="OBS Cam" exclusive_caps=1
    '';
  };

  security.polkit.enable = true;
}
