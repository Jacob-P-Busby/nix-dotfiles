{ pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs29-gtk3;
  };

  services.emacs = {
    enable = true;
    package = pkgs.emacs29-gtk3;
  };

  home.packages = [
    # Nix
    pkgs.nixfmt
    pkgs.nil

    # Web
    pkgs.nodePackages.typescript-language-server
    pkgs.vscode-langservers-extracted
    pkgs.emmet-ls
    pkgs.tailwindcss-language-server

    # Rust is handled by rustup
  ];
}
