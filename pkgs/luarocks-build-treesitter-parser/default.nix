{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  luafilesystem,
}:
buildLuarocksPackage {
  pname = "luarocks-build-treesitter-parser";
  version = "6.0.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luarocks-build-treesitter-parser-6.0.2-1.rockspec";
      sha256 = "0lwz15983gp29smykm3z6blhfd3ah3yi96j0g6di74nkz2kmfqk7";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/lumen-oss/luarocks-build-treesitter-parser/archive/v6.0.2.zip";
    sha256 = "17877av310icqrv961ffhq852xx90wnpcxvqnylm476pndi1bf0f";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ luafilesystem ];

  meta = {
    homepage = "https://github.com/lumen-oss/luarocks-build-treesitter-parser";
    license.fullName = "MIT";
    description = "A luarocks build backend for tree-sitter parsers.";
  };
}
