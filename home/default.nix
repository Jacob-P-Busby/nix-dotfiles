{ pkgs, ... }:

{
  imports = [
    ./hypr # Window manager
    ./zsh # Primary shell
    ./git # Git options
    ./tmux # Terminal multiplexer
    ./kitty # Terminal emulator
    ./emacs # Text + code editor
    ./helix # Fast
  ];

  home.username = "jacob";
  home.homeDirectory = "/home/jacob";

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify" # No good alternatives :/

      # Steam stuff
      "steam"
      "steam-original"
      "steam-run"
    ];

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [
    # GUI
    pkgs.firefox # Browser
    pkgs.kitty # Terminal
    pkgs.waybar # Top Bar
    pkgs.libreoffice-fresh # Office suite
    pkgs.hyprpaper # Wallpaper utility
    pkgs.bitwarden-desktop # Password Manager
    pkgs.spotify # Music streaming
    pkgs.superTuxKart # Fun
    pkgs.krita # Art
    pkgs.inkscape # SVG
    pkgs.blender

    # CL
    pkgs.wl-clipboard # Copy & Paste
    pkgs.bitwarden-cli # Password Manager CLI
    pkgs.walk # File Crawler
    pkgs.languagetool # Autocorrect
    pkgs.python311 # Interactive Python
    pkgs.ripgrep # Optional dependency for many things
    pkgs.rustup # Rust my beloved
    pkgs.lsd # Better ls
    pkgs.go-task # Better make
    pkgs.lazygit

    # Node
    pkgs.nodejs # Base Node.js
    pkgs.nodePackages.pnpm # Node Package Manager

    # Nix
    pkgs.nixfmt
    pkgs.nil

    # Web
    pkgs.nodePackages.typescript-language-server
    pkgs.vscode-langservers-extracted
    pkgs.emmet-ls
    pkgs.tailwindcss-language-server
    pkgs.vue-language-server

    # Rust is handled by rustup
  ];

  home.sessionVariables = { EDITOR = "hx"; };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
    config = { common = { default = [ "hyprland" ]; }; };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
