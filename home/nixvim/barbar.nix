{ ... }:

{
  programs.nixvim = {
    plugins.barbar.enable = true;

    keymaps = [
      {
        action = "<cmd>BufferNext<CR>";
        mode = [ "n" ];
        key = "<m-Tab>";
        options = {
          desc = "Next Buffer";
        };
      }
      {
        action = "<cmd>BufferPrev<CR>";
        mode = [ "n" ];
        key = "<sm-Tab>";
        options = {
          desc = "Prev Buffer";
        };
      }
      {
        action = "<cmd>BufferClose<CR>";
        mode = [ "n" "v" ];
        key = "<leader>x";
        options.desc = "Close Buffer";
      }
    ];
  };
}
