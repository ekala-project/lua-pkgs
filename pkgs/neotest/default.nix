{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  nvim-nio,
}:
buildLuarocksPackage {
  pname = "neotest";
  version = "5.19.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/neotest-5.19.0-1.rockspec";
      sha256 = "1gfxf6v9q19xfn8kyklg2k4mj2fh4w03vyhq0drcmm4901vcvcz1";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neotest/neotest/archive/e37147bca240d5b790bb61dc7d13cea214897079.zip";
    sha256 = "1pbk3x8yi5hvb275gzz0c8gjykzpam1pcxxlb2l6qr1pzz0kvj7r";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ nvim-nio ];

  meta = {
    homepage = "https://github.com/nvim-neotest/neotest";
    license.fullName = "MIT";
    description = "An extensible framework for interacting with tests within NeoVim.";
  };
}
