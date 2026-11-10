{
  gnupg,
  gpgme,
  isLuaJIT,
  lib,
  libgit2,
  libgpg-error,
  lua,
  # Not packaged in corepkgs (or ekapkgs) yet; used when the composed set provides it.
  lux-cli ? null,
  nix,
  openssl,
  perl,
  pkg-config,
  rustPlatform,
  toLuaModule,
  stdenv,
}:

let
  luaMajorMinor = lib.take 2 (lib.splitVersion lua.version);
  luxLuaVersionDir = if isLuaJIT then "jit" else lib.concatStringsSep "." luaMajorMinor;
  luaVersionDir = if isLuaJIT then "5.1" else lib.concatStringsSep "." luaMajorMinor;
  luaFeature = if isLuaJIT then "luajit" else "lua${lib.concatStringsSep "" luaMajorMinor}";
in
toLuaModule (
  rustPlatform.buildRustPackage rec {
    pname = "lux-lua";

    version = lux-cli.version or "0";

    src = lux-cli.src or null;

    buildAndTestSubdir = "lux-lua";
    buildNoDefaultFeatures = true;
    buildFeatures = [ luaFeature ];

    cargoHash = lux-cli.cargoHash or lib.fakeHash;

    nativeBuildInputs = [
      perl
      pkg-config
    ];

    buildInputs = [
      gnupg
      gpgme
      libgit2
      libgpg-error
      openssl
    ];

    propagatedBuildInputs = [
      lua
    ];

    doCheck = false; # lux-lua tests are broken in nixpkgs
    useNextest = true;
    nativeCheckInputs = [
      lua
      nix
    ];

    env = {
      LIBGIT2_NO_VENDOR = 1;
      LIBSSH2_SYS_USE_PKG_CONFIG = 1;
      LUX_SKIP_IMPURE_TESTS = 1;
      RUSTFLAGS = lib.optionalString stdenv.hostPlatform.isDarwin "-C link-arg=-undefined -C link-arg=dynamic_lookup";
    };

    buildPhase = ''
      runHook preBuild
      cargo xtask-${luaFeature} dist
      mkdir -p $out
      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall
      cp -r target/dist/share $out
      cp -r target/dist/lib $out
      mkdir -p $out/lib/lua
      ln -s $out/share/lux-lua/${luxLuaVersionDir} $out/lib/lua/${luaVersionDir}
      runHook postInstall
    '';

    cargoTestFlags = [
      "--lib"
    ];

    meta = {
      description = "Lua API for the Lux package manager";
      homepage = "https://lux.lumen-labs.org/";
      changelog = "https://github.com/lumen-oss/lux/blob/${src.tag or "main"}/CHANGELOG.md";
      license = lib.licenses.lgpl3Plus;
      platforms = lib.platforms.all;
      broken = lux-cli == null;
    };
  }
)
