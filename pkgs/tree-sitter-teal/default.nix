{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  luarocks-build-treesitter-parser,
}:
buildLuarocksPackage {
  pname = "tree-sitter-teal";
  version = "0.0.35-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tree-sitter-teal-0.0.35-1.rockspec";
      sha256 = "06g2i3y3gmyz17v9gxwswa9db544nyhd5mx4zq3lihrshbbf6r10";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/euclidianAce/tree-sitter-teal/archive/05d276e737055e6f77a21335b7573c9d3c091e2f.zip";
    sha256 = "1g1zk47a8jcwac0j60mlfv56mhlhbf6f77vjkx4vsfbrryprcfi4";
  };

  disabled = luaOlder "5.1";
  nativeBuildInputs = [ luarocks-build-treesitter-parser ];

  meta = {
    homepage = "https://github.com/euclidianAce/tree-sitter-teal";
    license.fullName = "UNKNOWN";
    description = "tree-sitter parser for teal";
  };
}
