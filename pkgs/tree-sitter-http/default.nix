{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  luarocks-build-treesitter-parser,
}:
buildLuarocksPackage {
  pname = "tree-sitter-http";
  version = "0.0.33-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tree-sitter-http-0.0.33-1.rockspec";
      sha256 = "1x6avlk3bdz406ywmxpq0sdi31fpfrbpqlbdz1ygh9gpknah5617";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/rest-nvim/tree-sitter-http/archive/d2e4e4c7d03f70e0465d436f2b5f67497cd544ca.zip";
    sha256 = "1wjycyvrahbpamdi6x74l8q1q8jrnk0y8nrwdwqdc7lm8hqjb5s2";
  };

  disabled = luaOlder "5.1";
  nativeBuildInputs = [ luarocks-build-treesitter-parser ];

  meta = {
    homepage = "https://github.com/rest-nvim/tree-sitter-http";
    license.fullName = "UNKNOWN";
    description = "tree-sitter parser for http";
  };
}
