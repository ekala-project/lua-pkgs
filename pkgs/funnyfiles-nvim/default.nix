{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "funnyfiles.nvim";
  version = "1.0.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/funnyfiles.nvim-1.0.1-1.rockspec";
      sha256 = "1r3cgx8wvc1c4syk167m94ws513g0cdmmxnymf3zyidlszdwamy5";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/aikooo7/funnyfiles.nvim/archive/v1.0.1.zip";
    sha256 = "00p026r05gldbf18mmv8da9ap09di8dhy0rrd586pr2s2s36nzpd";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/aikooo7/funnyfiles.nvim";
    license.fullName = "MIT";
    description = "This plugin is a way of creating/deleting files/folders without needing to open a file explorer.";
  };
}
