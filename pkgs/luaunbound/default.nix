{
  buildLuarocksPackage,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luaunbound";
  version = "1.1.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luaunbound-1.1.0-1.rockspec";
      sha256 = "0d0qybfl309yqnl8h35m6xynj4wnwmvm1cxl31jqrnahym30w5d8";
    }).outPath;
  src = fetchurl {
    url = "https://code.zash.se/dl/luaunbound/luaunbound-1.1.0.tar.gz";
    sha256 = "0i02m7ivbjgj3271yvpac5pvm01nrynsff1pgp6d8qfc3r35jq93";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.6";

  meta = {
    homepage = "https://www.zash.se/luaunbound.html";
    license.fullName = "MIT";
    description = "A binding to libunbound";
  };
}
