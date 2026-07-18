{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "oil.nvim";
  version = "2.16.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/oil.nvim-2.16.0-1.rockspec";
      sha256 = "0gsdvzysvvb72z2bd5vcxpssgnb0q91y2z5nrzzafq7670xz49dp";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/stevearc/oil.nvim/archive/v2.16.0.zip";
    sha256 = "0pipdvaxrkdyfbp66sgrc3ppy260m95am9zhi3m8n7lm1ivp6fzb";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/stevearc/oil.nvim";
    license.fullName = "MIT";
    description = "Neovim file explorer: edit your filesystem like a buffer";
  };
}
