{ pkgs, ... }:

{
  imports = [
    ./options.nix
    ./lsp.nix
    ./plugins.nix
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
