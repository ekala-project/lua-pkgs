{
  buildLuarocksPackage,
  fetchurl,
  lua,
}:
buildLuarocksPackage {
  pname = "ljsyscall";
  version = "0.12-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/ljsyscall-0.12-1.rockspec";
      sha256 = "0zna5s852vn7q414z56kkyqwpighaghyq7h7in3myap4d9vcgm01";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/justincormack/ljsyscall/archive/v0.12.tar.gz";
    sha256 = "1w9g36nhxv92cypjia7igg1xpfrn3dbs3hfy6gnnz5mx14v50abf";
  };

  disabled = lua.luaversion != "5.1";

  meta = {
    homepage = "http://www.myriabit.com/ljsyscall/";
    license.fullName = "MIT";
    description = "LuaJIT Linux syscall FFI";
  };
}
