{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "stdlib";
  version = "41.2.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/stdlib-41.2.2-1.rockspec";
      sha256 = "0rscb4cm8s8bb8fk8rknc269y7bjqpslspsaxgs91i8bvabja6f6";
    }).outPath;
  src = fetchzip {
    url = "http://github.com/lua-stdlib/lua-stdlib/archive/release-v41.2.2.zip";
    sha256 = "0ry6k0wh4vyar1z68s0qmqzkdkfn9lcznsl8av7x78qz6l16wfw4";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  meta = {
    homepage = "http://lua-stdlib.github.io/lua-stdlib";
    license.fullName = "MIT/X11";
    description = "General Lua Libraries";
  };
}
