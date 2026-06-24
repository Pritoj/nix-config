{
  programs.nixvim.plugins.nvim-ufo = {
    enable = true;
    settings = {
      provider_selector.__raw = ''function() return { "treesitter", "indent" } end'';
    };
  };
}
