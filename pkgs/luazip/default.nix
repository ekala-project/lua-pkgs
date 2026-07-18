{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luazip";
  version = "1.2.7-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luazip-1.2.7-1.rockspec";
      sha256 = "1wxy3p2ksaq4s8lg925mi9cvbh875gsapgkzm323dr8qaxxg7mba";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mpeterv";
    repo = "luazip";
    tag = "1.2.7";
    hash = "sha256-pAuXdvF2hM3ApvOg5nn9EHTGlajujHMtHEoN3Sj+mMo=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.4";

  meta = {
    homepage = "https://github.com/mpeterv/luazip";
    license.fullName = "MIT";
    description = "Library for reading files inside zip files";
  };
}
