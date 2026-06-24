{
  programs.nixvim = {
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

    keymaps = [
      {
        mode = "n";
        key = "gd";
        action = "<cmd>lua vim.lsp.buf.definition()<CR>";
        options.desc = "Go to definition";
      }
      {
        mode = "n";
        key = "gr";
        action = "<cmd>lua vim.lsp.buf.references()<CR>";
        options.desc = "References";
      }
      {
        mode = "n";
        key = "gi";
        action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
        options.desc = "Implementation";
      }
      {
        mode = "n";
        key = "K";
        action = "<cmd>lua vim.lsp.buf.hover()<CR>";
        options.desc = "Hover";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
        options.desc = "Signature help";
      }
      {
        mode = "n";
        key = "gD";
        action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
        options.desc = "Declaration";
      }
      {
        mode = "n";
        key = "<leader>rn";
        action = "<cmd>lua vim.lsp.buf.rename()<CR>";
        options.desc = "Rename";
      }
      {
        mode = "n";
        key = "<leader>ca";
        action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
        options.desc = "Code action";
      }
      {
        mode = "n";
        key = "<leader>D";
        action = "<cmd>lua vim.lsp.buf.type_definition()<CR>";
        options.desc = "Type definition";
      }
      {
        mode = "n";
        key = "<leader>od";
        action = "<cmd>lua vim.diagnostic.open_float()<CR>";
        options.desc = "Line diagnostics";
      }
    ];
  };
}
