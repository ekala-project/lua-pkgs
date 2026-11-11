{
  description = "Lua packages for poly-repo Nixpkgs";

  inputs = {
    corepkgs.url = "github:ekala-project/corepkgs";
    nix-lib.follows = "corepkgs/nix-lib";
    systems.follows = "corepkgs/systems";
  };

  outputs =
    {
      corepkgs,
      nix-lib,
      systems,
      ...
    }:
    let
      forAllSystems = nix-lib.lib.genAttrs (import systems);
    in
    {
      legacyPackages = forAllSystems (
        system:
        import ./. {
          inherit system;
        }
      );

      formatter = corepkgs.formatter;
    };
}
