{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "fzf-lua";
  version = "0.0.2661-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/fzf-lua-0.0.2661-1.rockspec";
      sha256 = "0gw3q50zxawk81bnaxpj9n9n6fvv9qmyykvnxlha33bz0wvc13cq";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/ibhagwan/fzf-lua/archive/b6f0392fe1645973c795b5bbbd8d6db466a5a25a.zip";
    sha256 = "17mr5nnsx86isk8zqknpc172hpg86nxvmplcwwnk67qg1y8a8jwa";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/ibhagwan/fzf-lua";
    license = lib.licenses.agpl3Only;
    description = "Improved fzf.vim written in lua";
  };
}
