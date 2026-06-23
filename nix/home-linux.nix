{ config, pkgs, ... }:

{
  imports = [
    ./modules/shell.nix
    ./modules/neovim.nix
    ./modules/git.nix
    ./modules/tmux.nix
  ];

  home = {
    username = "pritojs";
    homeDirectory = "/home/pritojs";
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;
}
