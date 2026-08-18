{ pkgs, ... }:

{
  imports = [
    ./common.nix
    ./modules/antigravity.nix
  ];

  home = {
    username = "pritojs";
    homeDirectory = "/Users/pritojs";
    stateVersion = "26.05";
  };
  home.packages = with pkgs; [
    cook-cli
    yt-dlp
    spotdl
    ghostty-bin
  ];

  programs.git = {
    enable = true;
    settings = {
      user.name = "Pritoj Singh";
      user.email = "pritojs@gmail.com";
    };
  };
}
