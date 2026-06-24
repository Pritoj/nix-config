{ pkgs, ...}:

{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    nixpkgs.pkgs = pkgs;

    colorschemes.tokyonight = {
      enable = true;
      settings.style = "night";
    };


    plugins.treesitter = {
      enable = true;
      settings.ensure_installed = [
        "bash" "lua" "html" "css" "javascript" "typescript" "tsx"
        "yaml" "toml" "json" "json5" "jq" "ruby" "go"
        "dockerfile" "c" "markdown" "markdown_inline" "nix" "smithy"
      ];
      settings.highlight.enable = true;
      settings.indent.enable = true;
    };

    plugins.lspconfig.enable = true;

    lsp.servers = {
      lua_ls.enable = true;
      tsgo.enable = true;
      bashls.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;
      cssls.enable = true;
      html.enable = true;
      rust_analyzer.enable = true;
      nixd.enable = true;
    };

    opts = {
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;
      smartindent = true;
      relativenumber = true;
      number = true;
      signcolumn = "yes";
      clipboard = "unnamedplus";
      updatetime = 100;
    };

    globals = {
      mapleader = " ";
      maplocalleader = "\\";
    };
  };

  home.packages = with pkgs; [
    ripgrep
    fd
    lazygit
  ];

}


