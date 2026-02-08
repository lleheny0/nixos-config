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
          };
          control = {
            j = "escape";
          };
          "control+alt" = {
            q = "A-f4";
            j = "C-A-j";
          };
          "control+shift" = {
            "[" = "C-pageup";
            "]" = "C-pagedown";
            j = "C-S-j";
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
