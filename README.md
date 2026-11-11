# Lua Packages for poly-repo Nixpkgs

Central location to curate Lua packages (luarocks and others) for the ekala
poly-repo nixpkgs fork.

## Structure

```
default.nix         # Entry point
pins.nix            # Pinned external dependencies (core-pkgs, nix-lib), read from flake.lock
pkgs-module.nix     # Module wiring: creates overlays from pkgs/
lua-packages.nix    # System dependency overrides for Lua packages
top-level.nix       # Non-Lua top-level package overrides
pkgs/               # Auto-discovered Lua package expressions
ci/                 # Evaluation gate run by CI
```

## Adding a package

Create `pkgs/<name>/default.nix`:

```nix
{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "example";
  version = "1.0.0-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/example-1.0.0-1.rockspec";
    sha256 = "...";
  }).outPath;

  src = fetchFromGitHub {
    owner = "...";
    repo = "...";
    tag = "v1.0.0";
    hash = "...";
  };

  disabled = luaOlder "5.1";

  propagatedBuildInputs = [
    # other lua packages from this scope
  ];

  meta = {
    homepage = "...";
    description = "...";
    license.fullName = "MIT";
  };
}
```

The package is automatically available via `lua.pkgs.<name>` and
`lua.withPackages (ps: [ ps.<name> ])`.

## System dependency overrides

If a package needs system libraries (openssl, zlib, etc.), add an override
in `lua-packages.nix`:

```nix
final: prev: {
  mypackage = prev.mypackage.overrideAttrs (old: {
    buildInputs = (old.buildInputs or []) ++ [ final.pkgs.openssl ];
  });
}
```

## Evaluation

```
nix-build -A lua.pkgs.luafilesystem
nix-build -E '(import ./. {}).lua.withPackages (ps: [ ps.lpeg ps.luafilesystem ])'
```

## Checks

CI runs both of these on every pull request:

```sh
./ci/eval.sh       # every package in every lua.variants set must evaluate (aliases disabled)
nix fmt . -- --ci  # formatting, using corepkgs' treefmt configuration
```

Pins live in `flake.lock`; `pins.nix` reads them, so update them with
`nix flake update`.
