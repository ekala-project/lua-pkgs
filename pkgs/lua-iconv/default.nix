{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "lua-iconv";
  version = "7.0.0-4";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/lua-iconv-7.0.0-4.rockspec";
    sha256 = "0j34zf98wdr6ks6snsrqi00vwm3ngsa5f74kadsn178iw7hd8c3q";
  }).outPath;

  src = fetchurl {
    url = "https://github.com/lunarmodules/lua-iconv/archive/v7.0.0/lua-iconv-7.0.0.tar.gz";
    sha256 = "0arp0h342hpp4kfdxc69yxspziky4v7c13jbf12yrs8f1lnjzr0x";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/lunarmodules/lua-iconv/";
    description = "Lua binding to the iconv";
    license.fullName = "MIT/X11";
  };
}
