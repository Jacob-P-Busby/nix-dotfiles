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
    # Needs
    pkgs.cmake
    pkgs.shellcheck
    pkgs.libtool

    # Languages
    pkgs.nixfmt
    pkgs.nil

    pkgs.python311.python-lsp-server

    # Rust is handled by rustup
  ];
}
