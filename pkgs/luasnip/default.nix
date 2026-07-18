{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  jsregexp,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luasnip";
  version = "2.5.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luasnip-2.5.0-1.rockspec";
      sha256 = "1qgd4536yglz0v21bpia3q2xbjcakxh4jhphhficm7nqb82xfsap";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/L3MON4D3/LuaSnip/archive/v2.5.0.zip";
    sha256 = "16cirbi0zjg874858yqd36p3kbrmlpfii3bvx6lm9bpli7b4w9kn";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ jsregexp ];

  meta = {
    homepage = "https://github.com/L3MON4D3/LuaSnip";
    license.fullName = "Apache-2.0";
    description = "Snippet Engine for Neovim written in Lua.";
  };
}
