{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  lua,
}:
buildLuarocksPackage {
  pname = "rustaceanvim";
  version = "9.0.5-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rustaceanvim-9.0.5-2.rockspec";
      sha256 = "1wqs1nri1q4j91l7myn57667sxznisa1sgwhx4cakgancnl5m8s1";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/mrcjkb/rustaceanvim/archive/refs/tags/v9.0.5.zip";
    sha256 = "14396a3m4px4zcnpmfwkj3csxsmrbgx0v7yx6w8zni94zaixdacx";
  };

  disabled = lua.luaversion != "5.1";

  meta = {
    homepage = "https://github.com/mrcjkb/rustaceanvim/archive/refs/tags/v9.0.5.zip";
    license.fullName = "GPL-2.0-only";
    description = "🦀 Supercharge your Rust experience in Neovim! A heavily modified fork of rust-tools.nvim";
  };
}
