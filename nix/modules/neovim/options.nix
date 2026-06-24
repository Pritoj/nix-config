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
      foldcolumn = "1";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
    };

    globals = {
      mapleader = " ";
      maplocalleader = "\\";
    };
  };
}
