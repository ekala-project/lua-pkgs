# Enumerates every package in every Lua package set.
#
# Each variant in `lua.variants` (Lua 5.1 through 5.5 and each LuaJIT) has its
# own `pkgs` set, and the overrides in lua-packages.nix depend on the
# interpreter, so every set is covered. The rest of the package set comes from
# corepkgs, whose own CI evaluates it.
#
# Aliases are disabled. They are shims for a package already covered under its
# canonical name, so evaluating them only repeats work.
#
# When `checkMeta` is enabled, `handleEvalIssue` decides which rejections are bugs.
# `unknown-meta` and `broken-outputs` mean the `meta` itself is malformed, so
# they `abort` and name the package. Everything else -- broken, unfree,
# unsupported, insecure -- is a package correctly refusing to evaluate here,
# and `throw`s. So does `disabled = luaOlder ...`, which marks a package
# unsupported on that interpreter.
#
# What is left cannot be caught by `tryEval` and so fails the job with Nix's
# own message and source location: a missing `callPackage` argument, a missing
# attribute, or a type error. Those are the real bugs.

{
  checkMeta ? false,
}:

let
  pkgs = import ../. {
    modules = [
      {
        config = {
          aliases.nixpkgs = false;
          inherit checkMeta;

          handleEvalIssue =
            reason: msg:
            if
              builtins.elem reason [
                "unknown-meta"
                "broken-outputs"
              ]
            then
              abort msg
            else
              throw msg;
        };
      }
    ];
  };

  inherit (pkgs) lib;
  inherit (pkgs.lua) variants;

  # Forcing `drvPath` resolves every dependency and, for ci/eval.nix, runs
  # `check-meta`. `package` arrives unforced, so a lookup that throws is caught
  # here too.
  probe =
    package:
    let
      value = builtins.tryEval package;
    in
    builtins.tryEval (
      if value.success && lib.isDerivation value.value then
        builtins.seq value.value.drvPath null
      else
        null
    );

  isBuildable =
    value:
    let
      result = builtins.tryEval (lib.isDerivation value && builtins.seq value.drvPath true);
    in
    result.success && result.value;

  # Defined in corepkgs and broken there, so nothing in this repository can fix
  # them. Drop each entry once corepkgs is fixed and the pin bumped.
  excluded = [
    # pkgs-many/lua/luarocks/luarocks-nix.nix takes `nurl`, which corepkgs
    # does not package.
    "luarocks-nix"
  ];

  # `<variant>.<package>`, e.g. `v5_1.luaposix`.
  pairs = lib.concatMap (
    variant:
    let
      set = variants.${variant}.pkgs;
    in
    map (name: {
      name = "${variant}.${name}";
      value = set.${name};
    }) (builtins.filter (name: !builtins.elem name excluded) (builtins.attrNames set))
  ) (builtins.attrNames variants);
in
{
  inherit probe;

  targets = map (pair: pair.value) pairs;

  # Attribute set of all buildable derivations, keyed by `<variant>.<package>`.
  buildable = builtins.listToAttrs (builtins.filter (pair: isBuildable pair.value) pairs);
}
