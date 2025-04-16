{
  home-manager.users.luke = {
    programs.git = {
      enable = true;
      userName  = "Luke Leheny";
      userEmail = "luke.leheny@pm.me";
    };
  };

  environment.shellAliases = {
    gco = "git checkout";
    gci = "git commit";
    gfe = "git fetch";
    glg = "git log --oneline --graph --all --decorate";
    gpf = "git push --force-with-lease";
    gpl = "git pull";
    gps = "git push";
    gst = "git status";
  };
}
