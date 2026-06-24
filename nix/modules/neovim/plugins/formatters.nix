{ pkgs, ... }:

{
  programs.nixvim = {
    plugins.conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          lua = [ "stylua" ];
          typescript = [ "prettierd" ];
          typescriptreact = [ "prettierd" ];
          javascript = [ "prettierd" ];
          json = [ "prettierd" ];
          yaml = [ "prettierd" ];
          css = [ "prettierd" ];
          html = [ "prettierd" ];
          nix = [ "nixfmt" ];
          jq = [ "jq" ];
        };
        format_on_save = {
          timeout_ms = 500;
          lsp_fallback = true;
        };
      };
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>fm";
        action.__raw = ''function() require("conform").format({ async = true, lsp_fallback = true }) end'';
        options.desc = "[F]or[m]at buffer";
      }
    ];
  };

  home.packages = with pkgs; [
    stylua
    prettierd
    nixfmt-rfc-style
  ];
}
