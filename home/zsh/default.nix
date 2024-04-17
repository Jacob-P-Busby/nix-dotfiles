{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableVteIntegration = true; # Terminal integration
    autocd = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      off = "shutdown now";
      update = "home-manager switch --flake ~/.dotfiles";
    };

    initExtra = 
      ''
        function lk {
          cd "$(walk --icons "$@")"
        }
      '';

    oh-my-zsh = {
      enable = true;
      theme = "candy";
    };
  };
}
