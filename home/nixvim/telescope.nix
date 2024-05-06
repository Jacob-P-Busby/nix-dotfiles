{ ... }:

{
  programs.nixvim = {
    plugins.telescope.enable =true;

    keymaps = [
      {
        action = "<cmd>Telescope<CR>";
        mode = [ "n" "v" ];
        key = "<leader>tt";
        options.desc = "Open [T]elescope";
      }

      {
        action = "<cmd>Telescope find_files<CR>";
        mode = [ "n" "v" ];
        key = "<leader>tf";
        options.desc = "[T]elescope [F]iles";
      }

      {
        action = "<cmd>Telescope live_grep<CR>";
        mode = [ "n" "v" ];
        key = "<leader>tg";
        options.desc = "[T]elescope [G]rep";
      }
    ];
  };
}
