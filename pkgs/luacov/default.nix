{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "luacov";
  version = "0.17.0-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/luacov-0.17.0-1.rockspec";
    sha256 = "042jp0nfy3hcnbywlfp4jkrm9xpxrkggs57q616p4win9ibxcqjy";
  }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "luacov";
    tag = "v0.17.0";
    hash = "sha256-UI+6+0g3ldbKUsXCAgYll8v25gwEUn5A102Pn/H0c60=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://lunarmodules.github.io/luacov/";
    description = "Coverage analysis tool for Lua scripts";
    license.fullName = "MIT";
  };
}
