{
  imports = [
    ../core/server
    ../modules/hardware/no-audio-powersave.nix
    (
      import ../modules/server/snapclient.nix {
        asUser = false;
        params = "--soundcard 2";
      }
    )
  ];

  networking.hostName = "kitchen";
}
