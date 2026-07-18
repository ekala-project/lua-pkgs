{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lz.n";
  version = "2.11.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lz.n-2.11.3-1.rockspec";
      sha256 = "0fg256gwa7444fh7wivasi77x7qgxx4r3hjqw90qa1kav10np88n";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neorocks/lz.n/archive/v2.11.3.zip";
    sha256 = "0vnr1iiq4z3q7s3qylfmvcclmspydg8ll4p75jilcx9d114v7wwc";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/nvim-neorocks/lz.n";
    license.fullName = "GPL-2.0-or-later";
    description = "🦥 A dead simple lazy-loading Lua library for Neovim plugins.";
  };
}
