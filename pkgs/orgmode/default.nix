{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  tree-sitter-orgmode,
}:
buildLuarocksPackage {
  pname = "orgmode";
  version = "0.7.5-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/orgmode-0.7.5-1.rockspec";
      sha256 = "03spnsdpl34qkh14gniac15k4rncai2239wnv90p7z9wvkr2y0s1";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-orgmode/orgmode/archive/0.7.5.zip";
    sha256 = "00x1spp077bgm180pr0pnwa6hk34isjizf2zxcmlaq06rk548i7i";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ tree-sitter-orgmode ];

  meta = {
    homepage = "https://nvim-orgmode.github.io";
    license.fullName = "MIT";
    description = "Orgmode clone written in Lua for Neovim 0.11.0+.";
  };
}
