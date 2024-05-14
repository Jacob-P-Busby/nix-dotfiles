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
    pkgs.cmake
    pkgs.shellcheck
    pkgs.libtool

    # Org mode
    pkgs.texliveFull

    # Languages
    pkgs.nixfmt
    pkgs.nil

    # Rust is handled by rustup
  ];
}
