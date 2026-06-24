{
  imports = [
    ./treesitter.nix
    ./blink-cmp.nix
    ./formatters.nix
    ./ui.nix
    ./navigation.nix
    ./ufo.nix
  ];

  programs.nixvim.plugins = {
    barbecue.enable = true;
    fastaction.enable = true;
    markview.enable = true;
    nvim-autopairs.enable = true;
    lazydev.enable = true;
    navbuddy = {
      enable = true;
      settings.lsp.auto_attach = true;
    };
    mini = {
      enable = true;
      modules = {
        surround = { };
        ai = { };
      };
    };
  };
}
