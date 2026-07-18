{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "grug-far.nvim";
  version = "1.6.72-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/grug-far.nvim-1.6.72-1.rockspec";
      sha256 = "1ky24vksn0wvv058pvv03r163ba07s8b051mwi99qna2y77js2ds";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/MagicDuck/grug-far.nvim/archive/c69859c1d5427ab5fc7ed12380ab521b4e336691.zip";
    sha256 = "0yp64zp64zk5skf3blx359dmchy9wwfv4nf30hhdagvm8phbkkpx";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/MagicDuck/grug-far.nvim";
    license.fullName = "MIT";
    description = "Find And Replace plugin for neovim";
  };
}
