{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  nvim-nio,
}:
buildLuarocksPackage {
  pname = "pathlib.nvim";
  version = "2.2.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/pathlib.nvim-2.2.3-1.rockspec";
      sha256 = "0qwsjcsl6760d8d5k1lxlykh78g6v7xcr9caq3yh75yn76mwrl4i";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/pysan3/pathlib.nvim/archive/v2.2.3.zip";
    sha256 = "1z3nwy83r3zbll9wc2wyvg60z0dqc5hm2xdfvqh3hwm5s9w8j432";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ nvim-nio ];

  meta = {
    homepage = "https://pysan3.github.io/pathlib.nvim/";
    license.fullName = "MPL-2.0";
    description = "OS Independent, ultimate solution to path handling in neovim.";
  };
}
