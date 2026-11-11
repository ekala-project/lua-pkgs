{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "say";
  version = "1.4.1-3";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/say-1.4.1-3.rockspec";
      sha256 = "0iibmq5m5092y168banckgs15ngj2yjx11n40fyk7jly4pbasljq";
    }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "say";
    tag = "v1.4.1";
    hash = "sha256-IjNkK1leVtYgbEjUqguVMjbdW+0BHAOCE0pazrVuF50=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://lunarmodules.github.io/say";
    description = "Lua string hashing/indexing library";
    license.fullName = "MIT";
  };
}
