{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "nvim-nio";
  version = "1.10.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/nvim-nio-1.10.1-1.rockspec";
      sha256 = "1bkxvhk5bml6q5g4ycv3ggrqd24kkhhswa6if5g2q6j1j44lxgj0";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neotest/nvim-nio/archive/21f5324bfac14e22ba26553caf69ec76ae8a7662.zip";
    sha256 = "1bz5msxwk232zkkhfxcmr7a665la8pgkdx70q99ihl4x04jg6dkq";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/nvim-neotest/nvim-nio";
    license.fullName = "MIT";
    description = "A library for asynchronous IO in Neovim";
  };
}
