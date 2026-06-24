{
  programs.nixvim.plugins = {
    lualine = {
      enable = true;
      settings.options.globalstatus = true;
    };

    bufferline.enable = true;

    noice = {
      enable = true;
      settings.presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
      };
    };

    indent-blankline.enable = true;

    which-key.enable = true;

    gitsigns.enable = true;

    web-devicons.enable = true;
  };
}
