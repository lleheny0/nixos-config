{
  imports = [
    ./slow-scroll.nix
  ];

  services.keyd.keyboards.default.settings.main = {
    fn = "layer(aux)";
    leftmeta = "layer(alt)";
    leftalt = "layer(meta)";
    leftcontrol = "leftcontrol";
  };
}
