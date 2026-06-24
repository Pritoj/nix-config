{ ... }:

{
  imports = [
    ./common.nix
  ];

  home = {
    username = "pritojs";
    homeDirectory = "/home/pritojs";
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user.name = "Pritoj Singh";
      user.email = "pritojs@gmail.com";
    };
  };

}
