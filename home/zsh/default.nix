{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableVteIntegration = true; # Terminal integration
    autocd = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      off = "shutdown now";
      home-update = "home-manager switch --flake ~/.dotfiles";
    };

    oh-my-zsh = {
      enable = true;
      theme = "candy";
    };
  };
}
