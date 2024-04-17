{ config, pkgs, ... }:
{
  home.file.nvchad = {
    recursive = true;
    source = ./config;
    target = "./.config/nvim";
  };
}
