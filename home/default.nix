{ config, pkgs, ... }:

{
  imports = [
    ./hypr # Window manager
    ./zsh  # Primary shell
    ./git  # Git options
  ];
  
  home.username = "jacob";
  home.homeDirectory = "/home/jacob";

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "obsidian"
      "authy"
    ];

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [
    # GUI
    pkgs.obsidian     # Notes
    pkgs.firefox      # Browser
    pkgs.kitty        # Terminal
    pkgs.waybar       # Top Bar
    pkgs.libreoffice  # Office suite
    pkgs.hyprpaper    # Wallpaper utility
    pkgs.authy        # One time passwordd generator

    # CL
    pkgs.wl-clipboard # Copy & Paste
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
