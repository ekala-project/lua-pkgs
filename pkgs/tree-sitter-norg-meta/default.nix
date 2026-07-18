{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luarocks-build-treesitter-parser,
}:
buildLuarocksPackage {
  pname = "tree-sitter-norg-meta";
  version = "0.1.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tree-sitter-norg-meta-0.1.0-1.rockspec";
      sha256 = "0vngnyvdad6n36r37sc96asl7h5mph691a0638523mffbg8zdfvr";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neorg/tree-sitter-norg-meta/archive/v0.1.0.zip";
    sha256 = "1vz74wc5yy5fykl9c3b16k6fsvskxp93acsy81p337jzg709v97j";
  };

  nativeBuildInputs = [ luarocks-build-treesitter-parser ];

  meta = {
    homepage = "https://github.com/nvim-neorg/tree-sitter-norg-meta";
    license.fullName = "MIT";
    description = "Treesitter parser for Norg's `@document.meta` blocks.";
  };
}
