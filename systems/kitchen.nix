{
  imports = [
    ../core/server
    ../modules/hardware/no-audio-powersave.nix
    ../modules/server/snapclient.nix
  ];

  snapclient = {
    asUser = false;
    params = "--soundcard 2";
    predelay = 60;
  };

  networking.hostName = "kitchen";
}
