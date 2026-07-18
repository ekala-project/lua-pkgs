{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lsqlite3";
  version = "0.9.6-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lsqlite3-0.9.6-1.rockspec";
      sha256 = "1wb51lsfllmbzrjfl0dzxpg597nd54nn06c9plpvqwwjz4l9lrjf";
    }).outPath;
  src = fetchzip {
    url = "https://lua.sqlite.org/home/zip/lsqlite3_v096.zip?uuid=v0.9.6";
    sha256 = "0p24g17y6s0x1951y9pyndggp71drh4zrzb2a05nb9sk5s3z9dnm";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  meta = {
    homepage = "http://lua.sqlite.org/";
    license.fullName = "MIT";
    description = "A binding for Lua to the SQLite3 database library";
  };
}
