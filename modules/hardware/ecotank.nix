{ pkgs, ... }:

{
  services.printing = {
    drivers = [ pkgs.gutenprint ];
  };

  hardware.printers = {
    ensurePrinters = [
      {
        name = "EPSON_ET_2850_Series";
        description = "Epson ET-2850 EcoTank";
        location = "Home";
        deviceUri = "lpd://192.168.1.100:515/PASSTHRU";
        model = "gutenprint.5.3://escp2-et2750";
      }
    ];
  };
}
