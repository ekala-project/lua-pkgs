{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "mediator_lua";
  version = "1.1.2-0";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/mediator_lua-1.1.2-0.rockspec";
      sha256 = "0frzvf7i256260a1s8xh92crwa2m42972qxfq29zl05aw3pyn7bm";
    }).outPath;

  src = fetchurl {
    url = "https://github.com/Olivine-Labs/mediator_lua/archive/v1.1.2-0.tar.gz";
    sha256 = "16zzzhiy3y35v8advmlkzpryzxv5vji7727vwkly86q8sagqbxgs";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://olivinelabs.com/mediator_lua/";
    description = "Event handling through channels";
    license.fullName = "MIT";
  };
}
