{
  home-manager.users.luke = {
    programs.git = {
      enable = true;
      userName  = "Luke Leheny";
      userEmail = "luke.leheny@pm.me";
      extraConfig = {
        pull.rebase = true;
        rebase.autostash = true;
      };
    };
  };

  environment.shellAliases = {
    gaa = "git add --all";
    gap = "git add -p";
    gco = "git checkout";
    gca = "git commit --amend";
    gci = "git commit";
    gfe = "git fetch";
    glg = "git log --oneline --graph --all --decorate";
    gpf = "git push --force-with-lease";
    gpl = "git pull";
    gpu = "git push";
    gsa = "git stash";
    gsh = "git show";
    gsp = "git stash pop";
    gst = "git status";
  };
}
