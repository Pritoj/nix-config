{ pkgs, ... }:

{
  imports = [
    ./common.nix
  ];

  home = {
    username = "pritojs";
    homeDirectory = "/Users/pritojs";
    stateVersion = "26.05";
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "Pritoj Singh";
      user.email = "pritojs@gmail.com";
    };
  };
}
