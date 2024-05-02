{ ... }:

{
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      pylsp.enable = true;
      nixd.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };
  };
}
