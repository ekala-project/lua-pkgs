{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lzextras";
  version = "0.7.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lzextras-0.7.3-1.rockspec";
      sha256 = "03zz29rbbdrk518hflmmjb7sz7nczy11h3fs88v1cng08w4qfgd4";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/BirdeeHub/lzextras/archive/v0.7.3.zip";
    sha256 = "0rkspxm6gdxvr7agk8yyfdp8qhj4s3c9k3qaqyy2p9c31gzhsql5";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/BirdeeHub/lzextras";
    license.fullName = "GPL-2.0-or-later";
    description = "A collection of utilities and handlers for BirdeeHub/lze";
  };
}
