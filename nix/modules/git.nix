{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };
}
