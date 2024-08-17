{
  imports = [
    ../core
    ../modules/tv.nix
  ];

  networking.hostName = "chromebox";

  boot.extraModprobeConfig = ''
    options snd_hda_intel power_save=0
  '';
}
