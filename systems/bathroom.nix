{
  imports = [
    ../core/server
    ../modules/hardware/no-audio-powersave.nix
    (
      import ../modules/server/snapclient.nix {
        asUser = false;
        params = "--soundcard 9";
      }
    )
  ];

  networking.hostName = "kitchen";
}
