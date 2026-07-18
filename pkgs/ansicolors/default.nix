{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "ansicolors";
  version = "1.0.2-3";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/ansicolors-1.0.2-3.rockspec";
      sha256 = "19y962xdx5ldl3596ywdl7n825dffz9al6j6rx6pbgmhb7pi8s5v";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/kikito/ansicolors.lua/archive/v1.0.2.tar.gz";
    sha256 = "0r4xi57njldmar9pn77l0vr5701rpmilrm51spv45lz0q9js8xps";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/kikito/ansicolors.lua";
    license.fullName = "MIT";
    description = "Library for color Manipulation.";
  };
}
