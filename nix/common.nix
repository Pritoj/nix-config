{
  imports = [
    ./modules/shell.nix
    ./modules/neovim
    ./modules/git.nix
    ./modules/tmux.nix
  ];

  programs.home-manager.enable = true;
}
