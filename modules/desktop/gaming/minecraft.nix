{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    mcaselector
    prismlauncher
  ];

  home-manager.users.luke.home.file.".alsoftrc".text = ''
    drivers=pulse
  '';
}
