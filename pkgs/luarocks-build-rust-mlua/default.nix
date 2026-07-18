{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "luarocks-build-rust-mlua";
  version = "0.2.7-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luarocks-build-rust-mlua-0.2.7-1.rockspec";
      sha256 = "0wh1n7rg0fdllxi1vyvbqkrcl3jcqnjr3fwhwx9hc52xba850bna";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mlua-rs";
    repo = "luarocks-build-rust-mlua";
    tag = "0.2.7";
    hash = "sha256-Zf/Ey5utsgzXqR8zlDse7KsyWA0RGx3hyvnJ36qhKG8=";
  };

  meta = {
    homepage = "https://github.com/mlua-rs/luarocks-build-rust-mlua";
    license.fullName = "MIT";
    description = "A LuaRocks build backend for Lua modules written in Rust using mlua";
  };
}
