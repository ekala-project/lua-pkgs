{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  luarocks-build-rust-mlua,
}:
buildLuarocksPackage {
  pname = "toml-edit";
  version = "0.7.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/toml-edit-0.7.0-1.rockspec";
      sha256 = "174kjw3j6p1q5wxd34929wlm4hsv5s7ma44nccy3l0b52g453afg";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/lumen-oss/toml-edit.lua/archive/v0.7.0.zip";
    sha256 = "03wg6mwmj802a5iv4fklz0zwd9slpw9hjzwj5068gf2lihkkwjzh";
  };

  disabled = luaOlder "5.1";
  nativeBuildInputs = [ luarocks-build-rust-mlua ];

  meta = {
    homepage = "https://github.com/lumen-oss/toml-edit.lua";
    license.fullName = "MIT";
    description = "TOML Parser + Formatting and Comment-Preserving Editor";
  };
}
