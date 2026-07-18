{
  buildLuarocksPackage,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luuid";
  version = "20120509-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luuid-20120509-2.rockspec";
      sha256 = "1q2fv25wfbiqn49mqv26gs4pyllch311akcf7jjn27l5ik8ji5b6";
    }).outPath;
  src = fetchurl {
    url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/luuid.tar.gz";
    sha256 = "1bfkj613d05yps3fivmz0j1bxf2zkg9g1yl0ifffgw0vy00hpnvm";
  };

  disabled = luaOlder "5.2" || luaAtLeast "5.4";

  meta = {
    homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#luuid";
    license.fullName = "Public domain";
    description = "A library for UUID generation";
  };
}
