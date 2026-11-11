# Evaluates every package in every `lua.variants.<variant>.pkgs` set.
#
# See ci/packages.nix for what counts as a failure.
#
# Usage:
#   nix-instantiate --eval --strict ci/eval.nix

let
  packages = import ./packages.nix { };
  inherit (packages) probe targets;
in
builtins.deepSeq (map probe targets) {
  evaluated = builtins.length targets;
}
