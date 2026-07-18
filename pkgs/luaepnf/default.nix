{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lpeg,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luaepnf";
  version = "0.3-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luaepnf-0.3-2.rockspec";
      sha256 = "0kqmnj11wmfpc9mz04zzq8ab4mnbkrhcgc525wrq6pgl3p5li8aa";
    }).outPath;
  src = fetchFromGitHub {
    owner = "siffiejoe";
    repo = "lua-luaepnf";
    tag = "v0.3";
    hash = "sha256-iZksr6Ljy94D0VO4xSRO9s/VgcURvCfDMX9DOt2IetM=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";
  propagatedBuildInputs = [ lpeg ];

  meta = {
    homepage = "http://siffiejoe.github.io/lua-luaepnf/";
    license.fullName = "MIT";
    description = "Extended PEG Notation Format (easy grammars for LPeg)";
  };
}
