{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luarocks-build-treesitter-parser,
}:
buildLuarocksPackage {
  pname = "tree-sitter-orgmode";
  version = "2.0.4-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tree-sitter-orgmode-2.0.4-1.rockspec";
      sha256 = "0f8h1f5r7n32qplkk6w48ngj700105wn9xm7jqlvm26d6qpiihg9";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-orgmode/tree-sitter-org/archive/2.0.4.zip";
    sha256 = "1c0j9h1nxgh0r8h9l9xd75hqqbsjy9x01gkg520fqnwcq45jd8pg";
  };

  nativeBuildInputs = [ luarocks-build-treesitter-parser ];

  meta = {
    homepage = "https://github.com/nvim-orgmode/tree-sitter-org";
    license.fullName = "MIT";
    description = "A fork of tree-sitter-org, for use with the orgmode Neovim plugin";
  };
}
