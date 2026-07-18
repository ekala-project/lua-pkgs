{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luv,
}:
buildLuarocksPackage {
  pname = "sqlite";
  version = "v1.2.2-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/sqlite-v1.2.2-0.rockspec";
      sha256 = "0jxsl9lpxsbzc6s5bwmh27mglkqz1299lz68vfxayvailwl3xbxm";
    }).outPath;
  src = fetchFromGitHub {
    owner = "tami5";
    repo = "sqlite.lua";
    tag = "v1.2.2";
    hash = "sha256-NUjZkFawhUD0oI3pDh/XmVwtcYyPqa+TtVbl3k13cTI=";
  };

  propagatedBuildInputs = [ luv ];

  meta = {
    homepage = "https://github.com/tami5/sqlite.lua";
    license.fullName = "MIT";
    description = "SQLite/LuaJIT binding and a highly opinionated wrapper for storing, retrieving, caching, and persisting [SQLite] databases";
  };
}
