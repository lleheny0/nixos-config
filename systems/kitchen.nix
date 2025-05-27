{
  imports = [
    ../core/server
    ../modules/hardware/no-audio-powersave.nix
    (import ../modules/server/snapclient.nix { soundcard = "3"; })
  ];

  networking.hostName = "kitchen";
}
