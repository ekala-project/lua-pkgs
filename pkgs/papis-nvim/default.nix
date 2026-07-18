{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  nui-nvim,
  sqlite,
}:
buildLuarocksPackage {
  pname = "papis.nvim";
  version = "0.9.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/papis.nvim-0.9.1-1.rockspec";
      sha256 = "1ykcnzz2rpcn3v5aw4lhwc2vcc9gzrskkzir136i1szgnvrhhzg0";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/jghauser/papis.nvim/archive/v0.9.1.zip";
    sha256 = "1hicipx893p8y8sapn0kyqjinn8nhrrkc0a1cwl16z0mmh0jgk81";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    nui-nvim
    sqlite
  ];

  meta = {
    homepage = "https://github.com/jghauser/papis.nvim";
    license = lib.licenses.gpl3Only;
    description = "Manage your bibliography from within your favourite editor";
  };
}
