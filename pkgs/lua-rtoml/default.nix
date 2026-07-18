{
  buildLuarocksPackage,
  fetchFromGitHub,
  luaOlder,
  luarocks-build-rust-mlua,
}:
buildLuarocksPackage {
  pname = "lua-rtoml";
  version = "0.3-0";

  src = fetchFromGitHub {
    owner = "lblasc";
    repo = "lua-rtoml";
    rev = "aedc4030912e1c86a1490428dc547f35a1a99be6";
    hash = "sha256-Ge2Acy1XuAQENhoJpuRudazY2D8HSiVv1Ab+jqMjo0U=";
  };

  disabled = luaOlder "5.1";
  nativeBuildInputs = [ luarocks-build-rust-mlua ];
  propagatedBuildInputs = [ luarocks-build-rust-mlua ];

  meta = {
    homepage = "https://github.com/lblasc/lua-rtoml";
    license.fullName = "MIT";
    description = "Lua bindings for the Rust toml crate.";
  };
}
