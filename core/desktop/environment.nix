{
  environment = {
    shellAliases = {
      mb = "pushd /home/luke > /dev/null && rm -rf .mozilla.backup && mkdir .mozilla.backup && cp -r .mozilla/* .mozilla.backup && popd > /dev/null";
      nf = "mb && nu && nb";
    };
    variables = {
      BROWSER = "firefox";
    };
  };
}
