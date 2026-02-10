{ pkgs, ... }:

{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            capslock = "layer(control)";
            leftcontrol = "layer(aux)";
            rightalt = "rightmeta";
          };
          aux = {
            j = "down";
            k = "up";
            h = "left";
            l = "right";
            n = "home";
            m = "pagedown";
            "," = "pageup";
            "." = "end";
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
            "esc" = "`";
            "1" = "f1";
            "2" = "f2";
            "3" = "f3";
            "4" = "f4";
            "5" = "f5";
            "6" = "f6";
            "7" = "f7";
            "8" = "f8";
            "9" = "f9";
            "0" = "f10";
            "-" = "f11";
            "equal" = "f12";
            "backspace" = "delete";
            "up" = "pageup";
            "down" = "pagedown";
            "left" = "home";
            "right" = "end";
          };
          "control+alt" = {
            q = "A-f4";
          };
          "control+shift" = {
            "[" = "C-pageup";
            "]" = "C-pagedown";
          };
          "meta+shift" = {
            s = "sysrq";
          };
        };
      };
    };
  };

  users.users.luke.packages = with pkgs; [
    keyd
  ];
}
