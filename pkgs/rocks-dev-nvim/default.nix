{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  lua,
  nvim-nio,
  rocks-nvim,
  rtp-nvim,
}:
buildLuarocksPackage {
  pname = "rocks-dev.nvim";
  version = "1.8.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rocks-dev.nvim-1.8.1-1.rockspec";
      sha256 = "1rbyjxla58vy6qsbdgyi5y9rr73nswcshhkl4qmlnq4hg5nz1kkj";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neorocks/rocks-dev.nvim/archive/v1.8.1.zip";
    sha256 = "0zsy4pqh4rnw9awvw9wlq4v2hhksfh716qhh43bhsnr30d0bfi5x";
  };

  disabled = lua.luaversion != "5.1";
  propagatedBuildInputs = [
    nvim-nio
    rocks-nvim
    rtp-nvim
  ];

  meta = {
    homepage = "https://github.com/nvim-neorocks/rocks-dev.nvim";
    license = lib.licenses.gpl3Only;
    description = "A swiss-army knife for testing and developing rocks.nvim modules.";
  };
}
