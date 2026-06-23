{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    mouse = true;
    escapeTime = 0;
    terminal = "screen-256color";
    keyMode = "vi";

    extraConfig = ''
      set -ga terminal-overrides ",xterm*:RGB"
      set -g renumber-windows on
      set -g bell-action none
      set -g aggressive-resize on

      # Splits (preserve path)
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"

        # Zoom / Kill
      bind C-f resize-pane -Z
      bind C-q confirm-before -p "kill window? (y/n)" kill-window

      # Vim-aware pane navigation
      is_vim="ps -o state= -o comm= -t '#{pane_tty}' | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
      bind -n C-Left if-shell "$is_vim" "send-keys C-Left" "select-pane -L"
      bind -n C-Down if-shell "$is_vim" "send-keys C-Down" "select-pane -D"
      bind -n C-Up if-shell "$is_vim" "send-keys C-Up" "select-pane -U"
      bind -n C-Right if-shell "$is_vim" "send-keys C-Right" "select-pane -R"

      # Reload
      bind r source-file ~/.tmux.conf \; display "Reloaded"

      # Theme — minimal status bar
      set -g status-position bottom
      set -g status-justify left
      set -g status-style "bg=default,fg=white"
      set -g window-status-format " #I #W "
      set -g window-status-current-format " #I #W "
      set -g window-status-current-style "fg=white,bold"
      set -g status-right "%R - %d-%m-%Y"
      set -g pane-border-style "fg=colour8"
      set -g pane-active-border-style "fg=colour8"
    '';
    plugins = with pkgs.tmuxPlugins; [
      prefix-highlight
      online-status
    ];
  };
}
