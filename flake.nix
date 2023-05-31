{
  outputs = { self, nixpkgs }: {
    # replace 'joes-desktop' with your hostname here.
    # type `hostname` on terminal to get hostname
    nixosConfigurations.joes-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
