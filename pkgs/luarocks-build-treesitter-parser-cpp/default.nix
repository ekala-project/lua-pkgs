{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  luafilesystem,
}:
buildLuarocksPackage {
  pname = "luarocks-build-treesitter-parser-cpp";
  version = "2.0.6-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luarocks-build-treesitter-parser-cpp-2.0.6-1.rockspec";
      sha256 = "10js4km023lc3876jr1j6gyzyni8v3dizzmc352sxhz9gz9kinia";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/lumen-oss/luarocks-build-treesitter-parser-cpp/archive/v2.0.6.zip";
    sha256 = "1kr56cvxryxxkwvd69ywplw80hyaasyzmx842zzsncac3191vwpl";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ luafilesystem ];

  meta = {
    homepage = "https://github.com/lumen-oss/luarocks-build-treesitter-parser-cpp";
    license.fullName = "MIT";
    description = "A luarocks build backend for tree-sitter parsers written in C++.";
  };
}
