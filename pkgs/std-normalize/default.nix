{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
  std-_debug,
}:
buildLuarocksPackage {
  pname = "std.normalize";
  version = "2.0.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/std.normalize-2.0.3-1.rockspec";
      sha256 = "1l83ikiaw4dch2r69cxpl93b9d4wf54vbjb6fcggnkxxgm0amj3a";
    }).outPath;
  src = fetchzip {
    url = "http://github.com/lua-stdlib/normalize/archive/v2.0.3.zip";
    sha256 = "1gyywglxd2y7ck3hk8ap73w0x7hf9irpg6vgs8yc6k9k4c5g3fgi";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";
  propagatedBuildInputs = [ std-_debug ];

  meta = {
    homepage = "https://lua-stdlib.github.io/normalize";
    license.fullName = "MIT/X11";
    description = "Normalized Lua Functions";
  };
}
