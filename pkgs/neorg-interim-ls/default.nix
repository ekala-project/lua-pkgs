{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  neorg,
}:
buildLuarocksPackage {
  pname = "neorg-interim-ls";
  version = "2.1.4-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/neorg-interim-ls-2.1.4-1.rockspec";
      sha256 = "16c6b4in826fnv2wgxl1b7qsxvj62qq2xjnbik7z0hiij2vwc52x";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/benlubas/neorg-interim-ls/archive/v2.1.4.zip";
    sha256 = "0fpzfjpamb4amlnqf89zy9hdg95qh0mzdfrzh7qw13yvh4273z27";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ neorg ];

  meta = {
    homepage = "https://github.com/benlubas/neorg-interim-ls";
    license.fullName = "MIT";
    description = "Temporarily providing a limited set of LSP features to neorg";
  };
}
