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
    '';
  };
}
