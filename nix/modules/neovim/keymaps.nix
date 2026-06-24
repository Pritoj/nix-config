{
  programs.nixvim.keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = ";";
      action = ":";
      options.desc = "Command mode";
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options.desc = "Prev buffer";
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<CR>";
      options.desc = "Next buffer";
    }
    {
      mode = "n";
      key = "<leader>cfp";
      action = "<cmd>let @+ = expand('%:p')<CR>";
      options.desc = "Copy file path";
    }
  ];
}
