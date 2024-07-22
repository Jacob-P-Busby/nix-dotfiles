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
    pkgs.libvterm
    pkgs.shellcheck
    pkgs.libtool
    pkgs.gcc

    # Org mode
    pkgs.texliveFull

    # Languages
    # Nix
    pkgs.nixfmt
    pkgs.nil

    # Web
    pkgs.nodePackages.typescript-language-server

    # Rust is handled by rustup
  ];
}
