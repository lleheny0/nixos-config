{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    glfw3-minecraft
    mcaselector
    prismlauncher
  ];

  home-manager.users.luke.home.file.".alsoftrc".text = ''
    drivers=pulse
  '';
}
