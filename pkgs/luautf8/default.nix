{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "luautf8";
  version = "0.2.1-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/luautf8-0.2.1-1.rockspec";
    sha256 = "0g4xkcikxd2n9scrlbjbdk9a1bbli6s5yw9l4n4b0ss49wgnmc2y";
  }).outPath;

  src = fetchurl {
    url = "https://github.com/starwing/luautf8/archive/refs/tags/0.2.1.tar.gz";
    sha256 = "15455lyvjh5f6fgx41458nk7gak6q76k3aqjfp1xibk0v5f0flpa";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://github.com/starwing/luautf8";
    description = "A UTF-8 support module for Lua";
    license.fullName = "MIT";
  };
}
