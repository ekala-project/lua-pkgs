{
  lib,
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-ffi-zlib";
  version = "0.6-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-ffi-zlib-0.6-0.rockspec";
      sha256 = "060sac715f1ris13fjv6gwqm0lk6by0a2zhldxd8hdrc0jss8p34";
    }).outPath;
  src = fetchFromGitHub {
    owner = "hamishforbes";
    repo = "lua-ffi-zlib";
    tag = "v0.6";
    hash = "sha256-l3zN6amZ6uUbOl7vt5XF+Uyz0nbDrYgcaQCWRFSN22Q=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/hamishforbes/lua-ffi-zlib";
    description = "A Lua module using LuaJIT's FFI feature to access zlib.";
  };
}
