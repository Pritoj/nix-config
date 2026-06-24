{
  programs.nixvim.plugins.blink-cmp = {
    enable = true;
    settings = {
      keymap = {
        preset = "default";
        "<CR>" = [ "accept" "fallback" ];
      };
      sources.default = [ "lsp" "path" "buffer" "snippets" ];
      completion.documentation.auto_show = true;
      signature.enabled = true;
    };
  };
}
