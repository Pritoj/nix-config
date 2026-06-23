{ pkgs, ...}:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.packages = with pkgs; [
    # Build deps for treesitter parser compilation
    gcc
    gnumake
    nodejs
    unzip

    # Neovim deps
    ripgrep
    fd
    ripgrep
  ];
}
