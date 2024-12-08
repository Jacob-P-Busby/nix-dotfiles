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
    ./vsc # Web Dev
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

      # Jetbrains
      "webstorm"
      "rust-rover"

      "obsidian"
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
    pkgs.blender
    pkgs.jetbrains.webstorm
    pkgs.jetbrains.rust-rover
    pkgs.obsidian

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
    pkgs.awscli2
    pkgs.aws-sam-cli
    pkgs.wrangler
    pkgs.cargo-lambda
    pkgs.opentofu
    pkgs.musl
    pkgs.gcc
    pkgs.zip

    # Node
    pkgs.nodejs # Base Node.js
    pkgs.nodePackages.yarn

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

    pkgs.terraform-ls

    pkgs.go
    pkgs.gopls
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
