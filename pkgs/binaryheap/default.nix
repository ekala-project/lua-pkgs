{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "binaryheap";
  version = "0.4-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/binaryheap-0.4-1.rockspec";
      sha256 = "1ah37lhskmrb26by5ygs7jblx7qnf6mphgw8kwhw0yacvmkcbql4";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/Tieske/binaryheap.lua/archive/version_0v4.tar.gz";
    sha256 = "0f5l4nb5s7dycbkgh3rrl7pf0npcf9k6m2gr2bsn09fjyb3bdc8h";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/Tieske/binaryheap.lua";
    license.fullName = "MIT/X11";
    description = "Binary heap implementation in pure Lua";
  };
}
