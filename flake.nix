{

  description = "My flake :)";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    spicetify.url = "github:the-argus/spicetify-nix";
  };

  outputs = { nixpkgs, home-manager, nixvim, spicetify-nix, ... } : 
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
          extraSpecialArgs = { inherit spicetify-nix; };
          modules = [ 
            ./home
            nixvim.homeManagerModules.nixvim
          ];
        };
      };
    };
}
