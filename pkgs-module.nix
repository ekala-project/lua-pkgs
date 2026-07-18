let
  pins = import ./pins.nix;
  lib = import pins.lib;
  luaOverlay = lib.packageSets.mkAutoCalledPackageDir ./pkgs;
  luaOverrides = import ./lua-packages.nix;
  pkgsOverlay = import ./top-level.nix;
in
{
  config.overlays = {
    pkgs = [ pkgsOverlay ];
    lua = [
      luaOverlay
      luaOverrides
    ];
  };
}
