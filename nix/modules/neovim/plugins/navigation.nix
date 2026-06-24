{
  programs.nixvim = {
    plugins = {
      telescope.enable = true;

      trouble = {
        enable = true;
        settings.auto_close = true;
      };

      snacks = {
        enable = true;
        settings = {
          dashboard.enabled = false;
          explorer.enabled = true;
          terminal.enabled = true;
          lazygit.enabled = true;
          notifier.enabled = true;
          scroll.enabled = true;
          dim.enabled = true;
          picker.enabled = true;
        };
      };
    };

    keymaps = [
      # Snacks picker
      {
        mode = "n";
        key = "<leader>ff";
        action.__raw = "function() Snacks.picker.smart() end";
        options.desc = "Find files (smart)";
      }
      {
        mode = "n";
        key = "<C-p>";
        action.__raw = "function() Snacks.picker.files() end";
        options.desc = "Find files";
      }
      {
        mode = "n";
        key = "<leader>fb";
        action.__raw = "function() Snacks.picker.buffers() end";
        options.desc = "Buffers";
      }
      {
        mode = "n";
        key = "<leader>fw";
        action.__raw = "function() Snacks.picker.grep() end";
        options.desc = "Grep";
      }
      {
        mode = "n";
        key = "<leader>ch";
        action.__raw = "function() Snacks.picker.command_history() end";
        options.desc = "Command history";
      }
      {
        mode = "n";
        key = "<leader>nh";
        action.__raw = "function() Snacks.notifier.show_history() end";
        options.desc = "Notification history";
      }

      # Snacks explorer / tools
      {
        mode = "n";
        key = "<leader>e";
        action.__raw = "function() Snacks.explorer() end";
        options.desc = "File explorer";
      }
      {
        mode = "n";
        key = "<leader>git";
        action.__raw = "function() Snacks.lazygit() end";
        options.desc = "Lazygit";
      }
      {
        mode = "n";
        key = "<leader>gl";
        action.__raw = "function() Snacks.lazygit.log() end";
        options.desc = "Git log";
      }
      {
        mode = "n";
        key = "<leader>gf";
        action.__raw = "function() Snacks.lazygit.log_file() end";
        options.desc = "Git file log";
      }
      {
        mode = "n";
        key = "<leader>tt";
        action.__raw = "function() Snacks.terminal() end";
        options.desc = "Terminal";
      }
      {
        mode = "n";
        key = "<leader>tft";
        action.__raw = ''function() Snacks.terminal(nil, { win = { position = "float" } }) end'';
        options.desc = "Floating terminal";
      }

      # Snacks references
      {
        mode = "n";
        key = "<leader>nr";
        action.__raw = "function() Snacks.words.jump(1, true) end";
        options.desc = "Next reference";
      }
      {
        mode = "n";
        key = "<leader>pr";
        action.__raw = "function() Snacks.words.jump(-1, true) end";
        options.desc = "Prev reference";
      }

      # Trouble
      {
        mode = "n";
        key = "<leader>xx";
        action = "<cmd>Trouble diagnostics<CR>";
        options.desc = "Diagnostics";
      }
      {
        mode = "n";
        key = "<leader>xX";
        action = "<cmd>Trouble diagnostics filter.buf=0<CR>";
        options.desc = "Buffer diagnostics";
      }
      {
        mode = "n";
        key = "<leader>cs";
        action = "<cmd>Trouble symbols<CR>";
        options.desc = "Symbols";
      }
      {
        mode = "n";
        key = "<leader>cl";
        action = "<cmd>Trouble lsp<CR>";
        options.desc = "LSP definitions";
      }
      {
        mode = "n";
        key = "<leader>xL";
        action = "<cmd>Trouble loclist<CR>";
        options.desc = "Location list";
      }
      {
        mode = "n";
        key = "<leader>xQ";
        action = "<cmd>Trouble qflist<CR>";
        options.desc = "Quickfix list";
      }

      # Snacks toggles
      {
        mode = "n";
        key = "<leader>us";
        action.__raw = ''function() Snacks.toggle.option("spell"):toggle() end'';
        options.desc = "Toggle spell";
      }
      {
        mode = "n";
        key = "<leader>uw";
        action.__raw = ''function() Snacks.toggle.option("wrap"):toggle() end'';
        options.desc = "Toggle wrap";
      }
      {
        mode = "n";
        key = "<leader>uL";
        action.__raw = ''function() Snacks.toggle.option("relativenumber"):toggle() end'';
        options.desc = "Toggle relative number";
      }
      {
        mode = "n";
        key = "<leader>ud";
        action.__raw = "function() Snacks.toggle.diagnostics():toggle() end";
        options.desc = "Toggle diagnostics";
      }
      {
        mode = "n";
        key = "<leader>ul";
        action.__raw = ''function() Snacks.toggle.option("number"):toggle() end'';
        options.desc = "Toggle line numbers";
      }
      {
        mode = "n";
        key = "<leader>uh";
        action.__raw = "function() Snacks.toggle.inlay_hints():toggle() end";
        options.desc = "Toggle inlay hints";
      }
      {
        mode = "n";
        key = "<leader>uD";
        action.__raw = "function() Snacks.toggle.dim():toggle() end";
        options.desc = "Toggle dim";
      }
    ];
  };
}
