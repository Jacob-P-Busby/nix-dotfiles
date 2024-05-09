{ pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs29-gtk3;
  };

  home.packages = [
    pkgs.cmake
    pkgs.shellcheck
    pkgs.nixfmt
    pkgs.libtool
  ];
}
