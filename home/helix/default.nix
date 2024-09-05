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

    languages = {
      language = [
        {
          name = "html";
          language-servers = [ 
            "vscode-html-language-server"
            "tailwindcss-ls"
          ];
        }
        {
          name = "css";
          language-servers = [
            "vscode-css-language-server"
            "tailwindcss-ls"
          ];
        }
        {
          name = "jsx";
          language-servers = [
            "typescript-language-server"
            "tailwindcss-ls"
          ];
        }
        {
          name = "tsx";
          language-servers = [
            "typescript-language-server"
            "tailwindcss-ls"
          ];
        }
        {
          name = "vue";
          language-servers = [
            "vuels"
            "tailwindcss-ls"
          ];
        }
      ];
    };
  };
}
