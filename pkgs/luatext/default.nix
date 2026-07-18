{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luatext";
  version = "1.2.1-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luatext-1.2.1-0.rockspec";
      sha256 = "12ia4ibihd537mjmvdasnwgkinaygqwk03bsj3s0qrfhy6yz84ka";
    }).outPath;
  src = fetchFromGitHub {
    owner = "f4z3r";
    repo = "luatext";
    tag = "v1.2.1";
    hash = "sha256-StxCmjSSy3ok0hNkKTQyq4yS1LfX980R5pULCUjLPek=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/f4z3r/luatext/tree/main";
    license.fullName = "MIT";
    description = "A small library to print colored text";
  };
}
