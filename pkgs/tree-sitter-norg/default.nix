{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luarocks-build-treesitter-parser-cpp,
}:
buildLuarocksPackage {
  pname = "tree-sitter-norg";
  version = "0.2.6-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tree-sitter-norg-0.2.6-1.rockspec";
      sha256 = "1s0wj59v4zjgimws742ybzy7nhnnkz8nas4y5k96c2z5z54ynxmq";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neorg/tree-sitter-norg/archive/v0.2.6.zip";
    sha256 = "077rds0rq10wjywpj4hmmq9dd6qp6sfwbdjyh587laldrfl7jy6g";
  };

  nativeBuildInputs = [ luarocks-build-treesitter-parser-cpp ];

  meta = {
    homepage = "https://github.com/nvim-neorg/tree-sitter-norg";
    license.fullName = "MIT";
    description = "The official tree-sitter parser for Norg documents.";
  };
}
