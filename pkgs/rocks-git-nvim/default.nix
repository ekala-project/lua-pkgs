{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  lua,
  nvim-nio,
  rocks-nvim,
}:
buildLuarocksPackage {
  pname = "rocks-git.nvim";
  version = "2.5.10-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rocks-git.nvim-2.5.10-1.rockspec";
      sha256 = "0a01xh847gnpy844hdlmn8l6iwqhxj604mirqkhsqhr1l4rv715a";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/lumen-oss/rocks-git.nvim/archive/v2.5.10.zip";
    sha256 = "1hh0zrpdp4nc19wli6pm8bgjf6qzzjz4ydhshm4m2d22dmnh6ngz";
  };

  disabled = lua.luaversion != "5.1";
  propagatedBuildInputs = [
    nvim-nio
    rocks-nvim
  ];

  meta = {
    homepage = "https://github.com/lumen-oss/rocks-git.nvim";
    license = lib.licenses.gpl3Only;
    description = "Use rocks.nvim to install plugins from git!";
  };
}
