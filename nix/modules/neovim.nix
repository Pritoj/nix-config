{ pkgs, ...}:

{
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


