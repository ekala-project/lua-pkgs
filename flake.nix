{
  description = "Lua packages for poly-repo Nixpkgs";

  outputs = { ... }: {
    # Primary usage: import ./. {} (legacy, non-flake)
    # This flake entry point is provided for convenience.
    lib.eval = import ./.;
  };
}
