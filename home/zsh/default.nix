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

    antidote = {
      enable = true;

      plugins = [
        "romkatv/powerlevel10k"
      ];
    };
  };

  home.file.p10k = {
    enable = true;
    source = ./p10k-config;
    target = ".p10k.zsh";
  };
}
