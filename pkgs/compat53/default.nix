{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "compat53";
  version = "0.14.4-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/compat53-0.14.4-1.rockspec";
    sha256 = "01ahfb6g7ibxrlvypvrsry4pwzfj978afjfa9c5w1s7ahjf95d40";
  }).outPath;

  src = fetchzip {
    url = "https://github.com/lunarmodules/lua-compat-5.3/archive/v0.14.4.zip";
    sha256 = "16mvf6qq290m8pla3fq3r6d6fmbbysjy8b5rxi40hchs4ngrn847";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  meta = {
    homepage = "https://github.com/lunarmodules/lua-compat-5.3";
    description = "Compatibility module providing Lua-5.3-style APIs for Lua 5.2 and 5.1";
    license.fullName = "MIT";
  };
}
