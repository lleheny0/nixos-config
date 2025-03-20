{ pkgs, ... }:

{
  users.users.luke.packages = with pkgs; [
    glfw3-minecraft
    mcaselector
    (prismlauncher.override { jdks = [ jdk21 jdk8 ]; })
  ];
}
