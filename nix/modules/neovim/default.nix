{ pkgs, ... }:

{
  imports = [
    ./options.nix
    ./lsp.nix
    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    nixpkgs.pkgs = pkgs;
  };

  home.packages = with pkgs; [
    ripgrep
    fd
    lazygit
  ];
}
