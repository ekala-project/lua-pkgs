{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "md5";
  version = "1.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/md5-1.3-1.rockspec";
      sha256 = "08kx00ik1hly4p1a1bvvw3bvbddc64vdhpr21jy3asrj9nz86bnr";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/keplerproject/md5/archive/1.3.tar.gz";
    sha256 = "193dsjgnzrnykpmx68njkv72fxh2gb3llqgx2lgbgnf5i66shiq7";
  };

  disabled = luaOlder "5.0";

  meta = {
    homepage = "http://keplerproject.github.io/md5/";
    license.fullName = "MIT/X11";
    description = "Checksum library";
  };
}
