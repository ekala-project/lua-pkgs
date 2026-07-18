{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "nlua";
  version = "0.3.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/nlua-0.3.1-1.rockspec";
      sha256 = "1238vnwk14pdcq533a8ndmmkc0b9ndc4kh0aja7ypmsjvk2y5v3s";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/mfussenegger/nlua/archive/v0.3.1.zip";
    sha256 = "1m19ap9ipcdj16rbllxiqlww8hz98l63cdb8mhll37756nr773hn";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/mfussenegger/nlua";
    license = lib.licenses.gpl3Only;
    description = "Neovim as Lua interpreter";
  };
}
