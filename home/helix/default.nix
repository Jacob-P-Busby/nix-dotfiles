{ config, pkgs, ... }:

{
  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
      editor = {
        line-number = "relative";
        cursorline = true;
        cursorcolumn = true;
        rulers = [ 80 ];

        completion-timeout = 100;

        color-modes = true;
        bufferline = "multiple";
        
        cursor-shape = {
          insert = "bar";
        };

        indent-guides = {
          render = true;
        };
      };

    };
  };
}
