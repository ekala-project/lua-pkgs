{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "utf8";
  version = "1.3-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/utf8-1.3-0.rockspec";
      sha256 = "1szsrwb15yyvrqwyqrr7g5ivihc0kl4pc7qq439q235f3x8jv2jp";
    }).outPath;
  src = fetchFromGitHub {
    owner = "dannote";
    repo = "luautf8";
    rev = "f36cc914ae9015cd3045987abadd83bbcfae98f0";
    hash = "sha256-xLWqglAzqcxY+R8GOC+D3uzL2+9ZriEx8Kj41LkI5vU=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://github.com/starwing/luautf8";
    license.fullName = "MIT";
    description = "A UTF-8 support module for Lua";
  };
}
