{
  environment = {
    shellAliases = {
      dw = "dconf watch /";
      ir = "exiftool '-filename<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le' .";
      mb = "cd /home/luke && rm -rf .mozilla.backup && mkdir .mozilla.backup && cp -r .mozilla/* .mozilla.backup && cd ~-";
      npub = "mb && np && nu && nb";
      npus = "mb && np && nu && ns";
    };

    variables = {
      BROWSER = "firefox";
    };
  };
}
