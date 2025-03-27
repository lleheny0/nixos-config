{
  environment = {
    shellAliases = {
      dw = "dconf watch /";
      ir = "exiftool '-filename<CreateDate' -d '%Y-%m-%d %H.%M.%S%%-c.%%le' .";
      mb = "pushd /home/luke > /dev/null && rm -rf .mozilla.backup && mkdir .mozilla.backup && cp -r .mozilla/* .mozilla.backup && popd > /dev/null";
      nub = "mb && nu && nb";
      nus = "mb && nu && ns";
    };

    variables = {
      BROWSER = "firefox";
    };
  };
}
