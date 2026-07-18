{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-utils.nvim";
  version = "1.0.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-utils.nvim-1.0.2-1.rockspec";
      sha256 = "0s11j4vd26haz72rb0c5m5h953292rh8r62mvlxbss6i69v2dkr9";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neorg/lua-utils.nvim/archive/v1.0.2.zip";
    sha256 = "0bnl2kvxs55l8cjhfpa834bm010n8r4gmsmivjcp548c076msagn";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/nvim-neorg/lua-utils.nvim";
    license.fullName = "MIT";
    description = "A set of utility functions for Neovim plugins.";
  };
}
