{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "lua-messagepack";
  version = "0.5.4-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-messagepack-0.5.4-1.rockspec";
      sha256 = "1jygn6f8ab69z0nn1gib45wvjp075gzxp54vdmgxb3qfar0q70kr";
    }).outPath;

  src = fetchurl {
    url = "https://framagit.org/fperrad/lua-MessagePack/raw/releases/lua-messagepack-0.5.4.tar.gz";
    sha256 = "0kk1n9kf6wip8k2xx4wjlv7647biji2p86v4jf0h6d6wkaypq0kz";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://fperrad.frama.io/lua-MessagePack/";
    description = "A pure Lua implementation of the MessagePack serialization format";
    license.fullName = "MIT/X11";
  };
}
