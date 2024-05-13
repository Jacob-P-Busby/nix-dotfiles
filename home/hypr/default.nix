{ pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      monitor = [
        "eDP-1,1920x1080@60,0x0,1"
        "HDMI-A-1,1920x1080@144,0x-1080,1" # Home AOC monitor
        ",preferred,auto,1"
      ];

      "$terminal" = "kitty";
      "$fileManager" = "nemo";
      "$menu" = "rofi -show drun";

      env = [ "XCURSOR_SIZE,24" "QT_QPA_PLATFORMTHEME,qt5ct" ];

      input = {
        kb_layout = "us";
        kb_variant = "";
        kb_model = "";
        kb_options = "";
        kb_rules = "";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = "yes";
          scroll_factor = 0.5;
        };

        sensitivity = 0.2;
      };

      general = {
        gaps_in = 10;
        gaps_out = 10;
        border_size = 2;
        "col.active_border" = "rgba(cba6f7ee) rgba(f38ba8ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        layout = "dwindle";
        allow_tearing = false;
      };

      decoration = {
        rounding = 5;

        blur = {
          enabled = true;
          size = 3;
          passes = 1;
        };

        drop_shadow = "yes";
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(1a1a1aee)";
      };

      animations = {
        enabled = "yes";
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

        animation = [
          "windows, 1 ,7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      dwindle = {
        pseudotile = "yes";
        preserve_split = "yes";
      };

      master = { new_is_master = true; };

      gestures = { workspace_swipe = "on"; };

      misc = { force_default_wallpaper = "1"; };

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod_SHIFT, Q, killactive"
        "$mainMod_SHIFT, P, exit,"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, V, togglefloating"
        "$mainMod, D, exec, $menu"
        "$mainMod, F, fullscreen, 0"
        "$mainMod, Return, exec, $terminal"
        "$mainMod, Z, exec, firefox"
        "$mainMod_SHIFT, Z, exec, firefox --private-window"

        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod, X, swapactiveworkspaces, eDP-1 HDMI-A-1" # Switch between laptop and hdmi monitor

        "$mainMod, M, togglespecialworkspace, magic"
        "$mainMod SHIFT, M, movetoworkspace, special:magic"
        "$mainMod, L, exec, kitty nvim"
        "$mainMod, S, exec, hyprshot -m window"
        "$mainMod SHIFT, S, exec, hyprshot -m region"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      exec-once = [
        "waybar" # Top bar
        "hyprpaper" # Wallpaper utility
      ];
    };
  };

  home.file.hypr = {
    enable = true;
    executable = true;
    target = "Hypr";
    text = "Hyprland";
  };

  home.packages =
    [ pkgs.hyprshot pkgs.libnotify pkgs.rofi-wayland pkgs.catppuccin-cursors ];

  home.file.cursor = {
    enable = true;
    target = ".icons/catppuccin";
    source =
      <pkgs.catppuccin-cursors> /share/icons/Catppuccin-Mocha-Mauve-Cursors;
  };

  services.dunst.enable = true;
}
