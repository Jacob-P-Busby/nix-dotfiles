{ ... }:

{
  programs.zsh = {
    enable = true;
    enableVteIntegration = true; # Terminal integration
    autocd = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      off = "shutdown now";
      update = "home-manager switch --flake ~/.dotfiles";
      full-update = 
      ''
      '';
    };

    initExtra = 
      ''
        function lk {
          cd "$(walk --icons "$@")"
        }

        function update-full {
          cd ~/.dotfiles
          nix flake update
          git add flake.lock
          git commit -m 'flake.lock bump'
          home-manager switch --flake ~/.dotfiles
          cd -
        }
      '';

    oh-my-zsh = {
      enable = true;
      theme = "candy";
    };
  };
}
