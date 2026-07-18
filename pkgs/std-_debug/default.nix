{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "std._debug";
  version = "1.0.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/std._debug-1.0.1-1.rockspec";
      sha256 = "0mr9hgzfr9v37da9rfys2wjq48hi3lv27i3g38433dlgbxipsbc4";
    }).outPath;
  src = fetchzip {
    url = "http://github.com/lua-stdlib/_debug/archive/v1.0.1.zip";
    sha256 = "19vfpv389q79vgxwhhr09l6l6hf6h2yjp09zvnp0l07ar4v660pv";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  meta = {
    homepage = "http://lua-stdlib.github.io/_debug";
    license.fullName = "MIT/X11";
    description = "Debug Hints Library";
  };
}
