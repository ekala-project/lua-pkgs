{
  buildLuarocksPackage,
  fetchurl,
}:

buildLuarocksPackage {
  pname = "lua-term";
  version = "0.8-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/lua-term-0.8-1.rockspec";
    sha256 = "1728lj3x8shc5m1yczrl75szq15rnfpzk36n0m49181ly9wxn7s0";
  }).outPath;

  src = fetchurl {
    url = "https://github.com/hoelzro/lua-term/archive/0.08.tar.gz";
    sha256 = "1vfdg5dzqdi3gn6wpc9a3djhsl6fn2ikqdwr8rrqrnd91qwlzycg";
  };

  meta = {
    homepage = "https://github.com/hoelzro/lua-term";
    description = "Terminal functions for Lua";
    license.fullName = "MIT/X11";
  };
}
