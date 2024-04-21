{ config, pkgs, ... }:

{
  # Inspiration from Dreams Of Code@YT
  programs.tmux = {
    enable = true;
    clock24 = true;
    mouse = true;

    plugins = [
      pkgs.tmuxPlugins.sensible
      pkgs.tmuxPlugins.vim-tmux-navigator
      pkgs.tmuxPlugins.catppuccin
    ];

    prefix = "C-Space";

    extraConfig = 
    ''
      bind -n M-H previous-window
      bind -n M-L next-window

      set -g base-index 1
      set -g pane-base-index 1
      set-window-option -g pane-base-index 1
    '';
  };
}
