{
  lib,
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "coop.nvim";
  version = "1.2.0-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/coop.nvim-1.2.0-0.rockspec";
      sha256 = "1fkpdddk2c2wibk0khgmvr03in2hz8wd3gdmmfbfbpb6jybhcckg";
    }).outPath;
  src = fetchFromGitHub {
    owner = "gregorias";
    repo = "coop.nvim";
    rev = "b156e541316aee14be4ae64c93ed8bddb6d03bc1";
    hash = "sha256-S6iGmdakI714Im0tetgfASbe0K4/olYsjj26+WP+rSU=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/gregorias/coop.nvim";
    license = lib.licenses.gpl3Only;
    description = "A Neovim plugin for structured concurrency with coroutines.";
  };
}
