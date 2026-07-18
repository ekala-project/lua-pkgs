{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  lz-n,
}:
buildLuarocksPackage {
  pname = "lzn-auto-require";
  version = "0.2.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lzn-auto-require-0.2.0-1.rockspec";
      sha256 = "02w8pvyhnlbsz56rhgjql13qkh7fk05ai1qkqvk90a8ni8w48hh3";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/horriblename/lzn-auto-require/archive/v0.2.0.zip";
    sha256 = "1mgka1mmvpd2gfya898qdbbwrp5rpqds8manjs1s7g5x63xp6b98";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ lz-n ];

  meta = {
    homepage = "https://github.com/horriblename/lzn-auto-require";
    license.fullName = "GPL-2.0-only";
    description = "Auto load optional plugins via lua modules with lz.n";
  };
}
