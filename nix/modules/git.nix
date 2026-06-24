{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Pritoj Singh";
      user.email = "pritojs@gmail.com";
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };
}
