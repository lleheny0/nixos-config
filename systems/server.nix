{
  imports = [
    ../core/server
    ../modules/server/minecraft
    ../modules/server/vgm-radio
  ];

  ssh.usePasswordAuth = false;

  networking.hostName = "server";
}
