{
  imports = [
    ../core/desktop
    ../modules/hardware/no-audio-powersave.nix
    ../modules/hardware/tv.nix
  ];

  networking.hostName = "optiplex-7020";

  boot.kernelParams = [ "radeon.si_support=0" "amdgpu.si_support=1" ];
}
