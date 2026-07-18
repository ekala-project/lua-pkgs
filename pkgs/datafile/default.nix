{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "datafile";
  version = "0.11-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/datafile-0.11-1.rockspec";
      sha256 = "09i0yqakzc342f2qqa0yxkdyz55y9s5v036x3xjwpfjry8yywc6q";
    }).outPath;
  src = fetchFromGitHub {
    owner = "hishamhm";
    repo = "datafile";
    tag = "v0.11";
    hash = "sha256-aHdxFJ2IB9v9UMK7vqk7tUA0rLmfvRd0nzhc9JO8AlQ=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://github.com/hishamhm/datafile";
    license.fullName = "MIT/X11";
    description = "A library for handling paths when loading data files";
  };
}
