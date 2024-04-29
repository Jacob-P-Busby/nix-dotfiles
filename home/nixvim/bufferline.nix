{ ... }:

{
  programs.nixvim = {
    plugins.bufferline.enable = true;

    keymaps = [
      {
        action = "<cmd>BufferLineCycleNext<CR>";
        mode = [ "n" ];
        key = "<m-Tab>";
        options = {
          desc = "Next Buffer";
          silent = true;
        };
      }
      {
        action = "<cmd>BufferLineCyclePrev<CR>";
        mode = [ "n" ];
        key = "<sm-Tab>";
        options = {
          desc = "Prev Buffer";
          silent = true;
        };
      }
    ];
  };
}
