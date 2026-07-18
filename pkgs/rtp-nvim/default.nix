{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "rtp.nvim";
  version = "1.2.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rtp.nvim-1.2.0-1.rockspec";
      sha256 = "0is9ssi3pwvshm88lnp4hkig4f0ckgl2f3a1axwci89y8lla50iv";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neorocks/rtp.nvim/archive/v1.2.0.zip";
    sha256 = "1b6hx50nr2s2mnhsx9zy54pjdq7f78mi394v2b2c9v687s45nqln";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/nvim-neorocks/rtp.nvim";
    license = lib.licenses.gpl3Only;
    description = "Source plugin and ftdetect directories on the Neovim runtimepath.";
  };
}
