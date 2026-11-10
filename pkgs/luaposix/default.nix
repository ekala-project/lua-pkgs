{
  bit32,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  lib,
  luaAtLeast,
  luaOlder,
  libxcrypt,
}:

buildLuarocksPackage {
  pname = "luaposix";
  version = "36.3-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/luaposix-36.3-1.rockspec";
    sha256 = "0jwah6b1bxzck29zxbg479zm1sqmg7vafh7rrkfpibdbwnq01yzb";
  }).outPath;

  src = fetchzip {
    url = "http://github.com/luaposix/luaposix/archive/v36.3.zip";
    sha256 = "0k05mpscsqx1yd5vy126brzc35xk55nck0g7m91vrbvvq3bcg824";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  # The rockspec only adds bit32 for Lua 5.1 (via its `_ENV` trick).
  propagatedBuildInputs = lib.optionals (luaOlder "5.2") [ bit32 ];

  externalDeps = [
    { name = "CRYPT"; dep = libxcrypt; }
  ];

  meta = {
    homepage = "http://github.com/luaposix/luaposix/";
    description = "Lua bindings for POSIX";
    license.fullName = "MIT/X11";
  };
}
