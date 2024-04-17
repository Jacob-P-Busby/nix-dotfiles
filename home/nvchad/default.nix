{ config, pkgs, ... }:
{
  home.file.nvchad-lua = {
    recursive = true;
    source = ./config/lua;
    target = "./.config/nvim/lua";
  };

  home.file.nvchad-init = {
    source = ./config/init.lua;
    target = "./.config/nvim/init.lua";
  };
}
