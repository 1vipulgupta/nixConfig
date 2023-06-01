{
  inputs.nixpkgs.url = github:NixOS/nixpkgs;
  
  outputs = { self, nixpkgs, ... }@args: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = nixpkgs;
      modules = [ ./configuration.nix ];
    };
  };
}
