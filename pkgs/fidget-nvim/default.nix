{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "fidget.nvim";
  version = "1.6.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/fidget.nvim-1.6.0-1.rockspec";
      sha256 = "1jra7xv2ifsy5p3zwbiv70ynligjh8wx48ykmbi2cagd2vz9arwz";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/j-hui/fidget.nvim/archive/v1.6.0.zip";
    sha256 = "120q3dzq142xda1bzw8chf02k86dw21n8qjznlaxxpqlpk9sl6hr";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/j-hui/fidget.nvim";
    license.fullName = "MIT";
    description = "Extensible UI for Neovim notifications and LSP progress messages.";
  };
}
