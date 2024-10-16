{ pkgs, ... }:

{
  boot.kernelModules = [
    "hid-nintendo"
  ];

  environment.shellAliases = {
    jc = "sudo joycond-cemuhook";
  };

  programs.steam.enable = true;

  users.users.luke.packages = with pkgs; [
    cemu
    glfw-wayland-minecraft
    joycond-cemuhook
    mcaselector
    piper
    prismlauncher
    protonup-ng
  ];

  services.ratbagd.enable = true;
}
