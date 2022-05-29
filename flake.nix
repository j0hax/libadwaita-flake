{
  description = "A basic flake to build a libadwaita program";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.libadwaita-flake =
      let pkgs = import nixpkgs { system = "x86_64-linux"; };
      in pkgs.callPackage ./default.nix { };

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.libadwaita-flake;

  };
}
