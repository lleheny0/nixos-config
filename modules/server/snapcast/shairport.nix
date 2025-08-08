{ pkgs, ... }:

{
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
    publish = {
      enable = true;
      userServices = true;
    };
  };

  services.shairport-sync = {
    enable = true;
    openFirewall = true;
    settings = {
      general = {
        name = "Home - Airplay";
        output_backend = "pipe";
      };
      pipe = {
        name = "/run/snapcast";
      };
      sessioncontrol = {
        allow_session_interruption = "yes";
      };
    };
  };
}
