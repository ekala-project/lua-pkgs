{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "fzy";
  version = "1.0.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/fzy-1.0.3-1.rockspec";
      sha256 = "07d07afjs73bl5krfbaqx4pw2wpfrkyw2iksamkfa8dlqn9ajn1a";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/swarn/fzy-lua/archive/v1.0.3.zip";
    sha256 = "0w3alddhn0jd19vmminbi1b79mzlagyl1lygmfpxhzzccdv4vapm";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/swarn/fzy-lua";
    license.fullName = "MIT";
    description = "A lua implementation of the fzy fuzzy matching algorithm";
  };
}
