{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "vstruct";
  version = "2.1.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/vstruct-2.1.1-1.rockspec";
      sha256 = "111ff5207hspda9fpj9dqdd699rax0df3abdnfbmdbdy3j07dd04";
    }).outPath;
  src = fetchFromGitHub {
    owner = "ToxicFrog";
    repo = "vstruct";
    tag = "v2.1.1";
    hash = "sha256-p9yRJ3Kr6WQ4vBSTOVLoX6peNCJW6b6kgXCySg7aiWo=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/ToxicFrog/vstruct";
    description = "Lua library to manipulate binary data";
  };
}
