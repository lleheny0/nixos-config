{
  home-manager.users.luke.programs.alacritty = {
    enable = true;
    theme = "hyper";
    settings = {
      env = {
        TERM = "xterm-256color";
      };
      window = {
        decorations = "None";
        startup_mode = "Maximized";
        dimensions = {
          columns = 150;
          lines = 50;
        };
      };
      colors = {
        primary = {
          background = "#000000";
          foreground = "#ffffff";
        };
      };
      mouse = {
        hide_when_typing = true;
      };
    };
  };
}
