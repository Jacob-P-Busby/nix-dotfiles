{ pkgs, ... }:

{
  imports = [
    ./hypr # Window manager
    ./zsh # Primary shell
    ./git # Git options
    ./tmux # Terminal multiplexer
    ./kitty # Terminal emulator
    ./emacs # Text + code editor
  ];

  home.username = "jacob";
  home.homeDirectory = "/home/jacob";

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "spotify" # No good alternatives :/
    ];

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [
    # GUI
    pkgs.firefox # Browser
    pkgs.kitty # Terminal
    pkgs.waybar # Top Bar
    pkgs.libreoffice # Office suite
    pkgs.hyprpaper # Wallpaper utility
    pkgs.bitwarden-desktop # Password Manager
    pkgs.spotify # Music streaming
    pkgs.superTuxKart # Fun
    pkgs.krita # Art
    pkgs.inkscape # SVG

    # CL
    pkgs.wl-clipboard # Copy & Paste
    pkgs.bitwarden-cli # Password Manager CLI
    pkgs.walk # File Crawler
    pkgs.languagetool # Autocorrect
    pkgs.python311 # Interactive Python
    pkgs.ripgrep # Optional dependency for many things
    pkgs.rustup # Rust my beloved
    pkgs.lsd # Better ls

    # Node
    pkgs.nodejs # Base Node.js
    pkgs.nodePackages.pnpm # Node Package Manager
  ];

  home.sessionVariables = { EDITOR = "nvim"; };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
    config = { common = { default = [ "hyprland" ]; }; };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
