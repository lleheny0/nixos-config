{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./keyd.nix
      ./mullvad.nix
      ./private.nix
      ./user
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelModules = [
    "hid-nintendo"
    "v4l2loopback"
  ];

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  # hardware.pulseaudio.support32Bit = true;
  # hardware.pulseaudio.extraConfig = "load-module module-combine-sink";
  # hardware.pulseaudio.daemon.config = {
  #   default-sample-rate = 48000;
  # };
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  fonts.packages = with pkgs; [
    fantasque-sans-mono
    freefont_ttf
    iosevka
  ];

  nixpkgs.config.allowUnfree = true;

  environment.shellAliases = {
    jc = "sudo joycond-cemuhook";
    nb = "sudo nixos-rebuild boot";
    nc = "sudo nix-collect-garbage -d";
    nr = "sudo nixos-rebuild switch";
    nu = "sudo nix-channel --update";
  };
  environment.variables = {
    BROWSER = "firefox";
    EDITOR = "vim";
  };
  environment.systemPackages = with pkgs; [
  ];

  programs.steam.enable = true;

  # todo: make this less bad
  systemd.tmpfiles.rules = [
    ''f+ /run/gdm/.config/monitors.xml - gdm gdm - <monitors version="2"> <configuration> <logicalmonitor> <x>0</x> <y>0</y> <scale>1</scale> <primary>yes</primary> <monitor> <monitorspec> <connector>DP-1</connector> <vendor>BNQ</vendor> <product>ZOWIE XL LCD</product> <serial>7BK02001SL0</serial> </monitorspec> <mode> <width>1920</width> <height>1080</height> <rate>119.982</rate> </mode> </monitor> </logicalmonitor> <logicalmonitor> <x>3840</x> <y>0</y> <scale>1</scale> <monitor> <monitorspec> <connector>DP-3</connector> <vendor>HJW</vendor> <product>MACROSILICON</product> <serial>0x0002e9bd</serial> </monitorspec> <mode> <width>1920</width> <height>1080</height> <rate>60.000</rate> </mode> </monitor> </logicalmonitor> <logicalmonitor> <x>1920</x> <y>0</y> <scale>1</scale> <monitor> <monitorspec> <connector>DP-2</connector> <vendor>DEL</vendor> <product>DELL E2216H</product> <serial>JF44Y65IAM7L</serial> </monitorspec> <mode> <width>1920</width> <height>1080</height> <rate>60.000</rate> </mode> </monitor> </logicalmonitor> </configuration> </monitors>''
  ];

  system.stateVersion = "unstable";
}
