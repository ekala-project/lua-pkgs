{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "mini.test";
  version = "0.18.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/mini.test-0.18.0-1.rockspec";
      sha256 = "0k0pdp5qalfhcmdaqi0mz3s0p7rwq88bjcs6b7s5z80rqrhji67k";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-mini/mini.test/archive/v0.18.0.zip";
    sha256 = "1q1qy3f0mxrqx96gq4q3h4w2qip40lqkyd9vs65zc76wj9wx37hw";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/nvim-mini/mini.test";
    license.fullName = "MIT";
    description = "Test neovim plugins. Part of the mini.nvim suite.";
  };
}
