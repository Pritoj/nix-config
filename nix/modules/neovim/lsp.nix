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
  };
}
