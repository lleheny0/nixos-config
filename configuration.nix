{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./keyd.nix
      ./user
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

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
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  fonts.packages = with pkgs; [
    comic-mono
    fantasque-sans-mono
    fira-code
    freefont_ttf
  ];

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [];
  environment.shellAliases = {
    nb = "sudo nixos-rebuild boot";
    nc = "sudo nix-collect-garbage -d";
    nr = "sudo nixos-rebuild switch";
    nu = "sudo nix-channel --update";
  };
  environment.variables = {
    EDITOR = "vim";
  };

  system.stateVersion = "23.11";
}
