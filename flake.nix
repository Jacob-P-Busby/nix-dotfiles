{

  description = "My flake :)";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable-small";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    lobster.url = "github:justchokingaround/lobster";
  };

  outputs = { self, nixpkgs, home-manager, lobster, ... }: 
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

    in
    {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;
          modules = [ ./configuration ];
        };
      };

      homeConfigurations = {
        jacob = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = {
            lobster = lobster;
          };
          modules = [ ./home ];
        };
      };
    };
}
