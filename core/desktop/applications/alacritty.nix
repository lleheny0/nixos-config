{
  home-manager.users.luke.programs.alacritty = {
    enable = true;
    theme = "hyper";
    settings = {
      font = {
        size = 12.0;
        normal = {
          family = "VGA";
          style = "Regular";
        };
        bold = {
          style = "Regular";
        };
        italic = {
          style = "Regular";
        };
        bold_italic = {
          style = "Regular";
        };
      };
      window = {
        decorations = "None";
        startup_mode = "Maximized";
        dimensions = {
          columns = 120;
          lines = 40;
        };
      };
      mouse = {
        hide_when_typing = true;
      };
      colors = {
        primary = {
          background = "#000000";
          foreground = "#ffffff";
        };
      };
    };
  };
}
