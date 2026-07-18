{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-zlib";
  version = "1.4-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-zlib-1.4-0.rockspec";
      sha256 = "1cfxph2cski4nn7vnqcpywm89lcf8vwnvykdva53ck3b3dmsj204";
    }).outPath;
  src = fetchFromGitHub {
    owner = "brimworks";
    repo = "lua-zlib";
    tag = "v1.4";
    hash = "sha256-z25OtHroEVUFraeFwajbmIiyD3hlZ12FnWs5uUBLm2Y=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/brimworks/lua-zlib";
    license.fullName = "MIT";
    description = "Simple streaming interface to zlib for Lua.";
  };
}
