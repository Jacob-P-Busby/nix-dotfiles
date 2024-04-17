{ config, pkgs, ... }:

{
  imports = [
    ./hypr   # Window manager
    ./zsh    # Primary shell
    ./git    # Git options
    ./nvchad # Neovim config
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
    pkgs.obsidian           # Notes
    pkgs.firefox            # Browser
    pkgs.kitty              # Terminal
    pkgs.waybar             # Top Bar
    pkgs.libreoffice        # Office suite
    pkgs.hyprpaper          # Wallpaper utility
    pkgs.bitwarden-desktop  # Password Manager

    # CL
    pkgs.wl-clipboard       # Copy & Paste
    pkgs.bitwarden-cli      # Password Manager CLI

    # Node
    pkgs.nodejs             # Base Node.js
    pkgs.nodePackages.pnpm  # Node Package Manager

    # Language Servers
    pkgs.lua-language-server
    pkgs.nixd
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # GUI configurations
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Mauve-Standard";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "mauve" ];
        size = "standard";
        variant = "mocha";
        tweaks = [ "normal" ];
      };
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
