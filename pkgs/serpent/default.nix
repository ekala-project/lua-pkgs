{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "serpent";
  version = "0.30-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/serpent-0.30-2.rockspec";
      sha256 = "0v83lr9ars1n0djbh7np8jjqdhhaw0pdy2nkcqzqrhv27rzv494n";
    }).outPath;
  src = fetchFromGitHub {
    owner = "pkulchenko";
    repo = "serpent";
    tag = "0.30";
    hash = "sha256-aCP/Lk11wdnqXzntgNlyZz1LkLgZApcvDiA//LLzAGE=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  meta = {
    homepage = "https://github.com/pkulchenko/serpent";
    license.fullName = "MIT";
    description = "Lua serializer and pretty printer";
  };
}
