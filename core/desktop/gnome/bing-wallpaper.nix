{ pkgs, ... }:

{
  systemd.user.services.bing-wallpaper = {
    description = "Set Bing wallpaper";
    path = with pkgs; [ curl glib wget ];
    script = ''
      bing_api_url="https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1"
      image_url=$(curl -s "$bing_api_url" | grep -oP '(?<="url":")[^"]*' | head -1)
      wget -O "/home/luke/Pictures/bing.jpg" "https://www.bing.com$image_url"
      gsettings set org.gnome.desktop.background picture-uri "file:///home/luke/Pictures/bing.jpg"
      gsettings set org.gnome.desktop.background picture-uri-dark "file:///home/luke/Pictures/bing.jpg"
    '';
    serviceConfig = {
      Type = "oneshot";
    };
  };
  systemd.user.timers.bing-wallpaper = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "*-*-* 04:00:00";
      Persistent = true;
      Unit = "bing-wallpaper.service";
    };
  };
}
