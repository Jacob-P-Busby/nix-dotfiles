{ ... }: 

{
  imports = [
    ./barbar.nix
    ./cmp.nix
    ./keymap.nix
    ./lsp.nix
    ./hop.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    enableMan = true;

    colorschemes.catppuccin.enable = true;

    globals = {
      mapleader = " ";
    };

    opts = {
      number = true;
      relativenumber = true;
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
    };

    plugins = {
      nvim-tree = {
        enable = true;
        autoClose = true;
      };

      tmux-navigator.enable = true;

      treesitter.enable = true;

      indent-blankline.enable = true;

      hop.enable = true;

      which-key.enable = true;

      lualine = { 
        enable = true;
        extensions = [ "nvim-tree" ];
      };

      telescope.enable = true;
    };
  };
}
