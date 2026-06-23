{ config, pkgs, ...}:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;

    history = {
      size = 10000;
      save = 10000;
      ignoreDups = true;
      ignoreAllDups = true;
      share = true;
    };

    sessionVariables = {
      TERM = "xterm-256color";
      EDITOR = "nvim";
    };

    shellAliases = {
      gpush = "git push origin $(git branch --show-current)";
      gpull = "git pull origin $(git branch --show-current)";
      gpushf = "git push origin $(git branch --show-current) -f";
      gco = "git checkout";
      gmend = "git commit --amend";
      gomit = "git commit";
      gixc = "git add . && git commit --amend --no-edit";
      rebtash = "git rebase --autostash";
      gtashall = "git add . && git stash";
      gtashpop = "git stash pop";
      gstatus = "git status";
      gtat = "git status";
      glog = "git log";
      glogol = "git log --oneline";
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration =true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}

