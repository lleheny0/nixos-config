{ lib, ... }:

{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            capslock = "layer(control)";
            leftcontrol = lib.mkDefault "layer(aux)";
          };
          aux = {
            j = "down";
            k = "up";
            h = "left";
            l = "right";
            y = "home";
            u = "pagedown";
            i = "pageup";
            o = "end";
            q = "mute";
            w = "volumedown";
            e = "volumeup";
            a = "previoussong";
            s = "playpause";
            d = "nextsong";
            z = "back";
            x = "forward";
            c = "brightnessdown";
            v = "brightnessup";
          };
          "control+alt" = {
            q = "A-f4";
          };
          "control+shift" = {
            "[" = "C-pageup";
            "]" = "C-pagedown";
          };
          "aux+shift" = {
            f1 = "C-S-f1";
            "2" = "C-S-2";
            x = "C-S-x";
            s = "C-S-s";
            w = "C-S-w";
          };
          "meta+shift" = {
            s = "sysrq";
          };
        };
      };
    };
  };
}
