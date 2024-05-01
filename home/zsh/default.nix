{ ... }:

{
  programs.zsh = {
    enable = true;
    enableVteIntegration = true; # Terminal integration
    autocd = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      off = "shutdown now";
    };

    initExtra = 
      ''
        function lk {
          cd "$(walk --icons "$@")"
        }

        function update {
          if git diff-index --cached HEAD --exit-code >& - 2>& -
          then
            home-manager switch --flake ~/.dotfiles
          else
            echo "Git tree is dirty"
          fi
        }

        function update-full {
          cd ~/.dotfiles
          if git diff-index --cached HEAD --exit-code >& - 2>& -
          then
            nix flake update
            git add flake.lock
            git commit -m 'flake.lock bump'
            home-manager switch --flake ~/.dotfiles
          else
            echo "Git tree is dirty"
          fi
          cd - >& -
        }
      '';

    oh-my-zsh = {
      enable = true;
      theme = "candy";
    };
  };
}
