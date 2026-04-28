{
  environment = {
    shellAliases = {
      dw = "dconf watch /";
      ir = "exiftool '-filename<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le' .";
      mb = "rm -rf /home/luke/Backups/mozilla/* && cp -r /home/luke/.config/mozilla /home/luke/Backups/mozilla";
      npub = "mb && np && nu && nb";
      npus = "mb && np && nu && ns";
      pa = "for file in *.tex; do pdflatex \"$file\"; done";
      vgm = "ssh -t 192.168.1.128 'vgm'";
    };

    variables = {
      BROWSER = "firefox";
      NIXOS_OZONE_WL = "1";
    };
  };
}
