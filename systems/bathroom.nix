{
  imports = [
    ../core/server
    ../modules/hardware/no-audio-powersave.nix
    ../modules/server/snapcast/client.nix
  ];

  snapclient = {
    asUser = false;
    params = "--soundcard 9 --latency 20";
    predelay = 60;
  };

  networking.hostName = "bathroom";
}
