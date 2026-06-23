{ config, pkgs, ... }:

{
  imports = [
    ./modules/shell.nix
  ];

  home = {
    username = "pritojs";
    homeDirectory = "/home/pritojs";
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;
}
