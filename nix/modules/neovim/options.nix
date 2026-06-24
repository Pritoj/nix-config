{
  programs.nixvim = {
    colorschemes.tokyonight = {
      enable = true;
      settings.style = "night";
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
}
