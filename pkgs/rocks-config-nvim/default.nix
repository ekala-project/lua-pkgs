{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  lua,
  rocks-nvim,
}:
buildLuarocksPackage {
  pname = "rocks-config.nvim";
  version = "3.2.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rocks-config.nvim-3.2.0-1.rockspec";
      sha256 = "07sznkw2qkbgibqg4sjpmrirvig17adhww7wmgb2h3kny7vaipxq";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/lumen-oss/rocks-config.nvim/archive/v3.2.0.zip";
    sha256 = "1w688m50g2q742yq9dp7w6g7rcp71pq6mybz2hw8g9af9q95js81";
  };

  disabled = lua.luaversion != "5.1";
  propagatedBuildInputs = [ rocks-nvim ];

  meta = {
    homepage = "https://github.com/lumen-oss/rocks-config.nvim";
    license = lib.licenses.gpl3Only;
    description = "Allow rocks.nvim to help configure your plugins.";
  };
}
