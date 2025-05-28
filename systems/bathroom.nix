{
  imports = [
    ../core/server
    ../modules/hardware/no-audio-powersave.nix
    ../modules/server/snapclient.nix
  ];

  snapclient = {
    asUser = false;
    params = "--soundcard 9 --latency 15";
    predelay = 60;
  };

  networking.hostName = "bathroom";
}
