{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lze";
  version = "0.13.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lze-0.13.0-1.rockspec";
      sha256 = "03l1855f97xm7hwjqrwwy85zyfjk9rgpmbm9v2lx7npbi118xmgp";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/BirdeeHub/lze/archive/v0.13.0.zip";
    sha256 = "012ay0kcbwz3wyh9nqhnb2rnadnz7bxkbi47zbzvfnshz6m7z3z6";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/BirdeeHub/lze";
    license.fullName = "GPL-2.0-or-later";
    description = "A lazy-loading library for neovim, inspired by, but different from, nvim-neorocks/lz.n";
  };
}
