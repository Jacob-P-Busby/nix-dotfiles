{ pkgs, ... }:

{
  programs.vscode ={
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc
      vue.volar
    ];
  };
}