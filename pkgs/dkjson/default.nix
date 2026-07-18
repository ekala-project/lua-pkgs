{
  buildLuarocksPackage,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "dkjson";
  version = "2.8-2";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/dkjson-2.8-2.rockspec";
    sha256 = "0hr4vfmf64kvmqbnr1vx4p6gl3mmiq1hg5jd60rqwplsiaib2r67";
  }).outPath;

  src = fetchurl {
    url = "https://dkolf.de/dkjson-lua/dkjson-2.8.tar.gz";
    sha256 = "0chmlcv8498n313x19aampwvz2s1pp4zpcvvxdhwihcixcxwvs14";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.6";

  meta = {
    homepage = "https://dkolf.de/dkjson-lua/";
    description = "David Kolf's JSON module for Lua";
    license.fullName = "MIT/X11";
  };
}
