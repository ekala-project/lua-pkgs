{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luafilesystem,
}:

buildLuarocksPackage {
  pname = "penlight";
  version = "1.15.0-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/penlight-1.15.0-1.rockspec";
      sha256 = "0m4m20vpvzkr2h9xs8q2a3wkib0jxzbkwb8hy6abxyvkm6r7fnvf";
    }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "penlight";
    tag = "1.15.0";
    hash = "sha256-yEkzr4v8avygFxp+NUvffg2fRxQJWTpRdIvluh/QBpY=";
  };

  propagatedBuildInputs = [ luafilesystem ];

  meta = {
    homepage = "https://lunarmodules.github.io/penlight";
    description = "Lua utility libraries loosely based on the Python standard libraries";
    license.fullName = "MIT/X11";
  };
}
