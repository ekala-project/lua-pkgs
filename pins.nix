let
  # Inherit pinning from flake.lock. `fetchGit` rather than `fetchTree` keeps
  # evaluation working on Nix 2.3.
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  fetchLocked =
    name:
    let
      node = lock.nodes.${name}.locked;
    in
    builtins.fetchGit {
      url = "https://github.com/${node.owner}/${node.repo}.git";
      inherit (node) rev;
    };
in
{
  core = fetchLocked "corepkgs";
  # `nix-lib` follows `corepkgs/nix-lib`, so use the node corepkgs points at.
  lib = fetchLocked lock.nodes.corepkgs.inputs.nix-lib;
}
