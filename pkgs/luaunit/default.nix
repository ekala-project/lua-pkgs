{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "luaunit";
  version = "3.5-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luaunit-3.5-1.rockspec";
      sha256 = "0rn0d9ng91rhrhvzq965przpxz5xx9vfyyakscfggf8xhg9g8s9p";
    }).outPath;

  src = fetchzip {
    url = "https://github.com/bluebird75/luaunit/releases/download/LUAUNIT_V3_5/rock-luaunit-3.5.zip";
    sha256 = "0qxk89c14s8gmzm7ka5caxn2qr3y4bxs1jqcni1hwfzkjh5jmyzk";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.6";

  meta = {
    homepage = "http://github.com/bluebird75/luaunit";
    description = "A unit testing framework for Lua";
    license.fullName = "BSD";
  };
}
