{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "haskell-tools.nvim";
  version = "10.0.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/haskell-tools.nvim-10.0.0-1.rockspec";
      sha256 = "1jh1g10nhjx8vj1xpsacq09bs78cygxmf0yipgdkh9ry5cfmf8pm";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/mrcjkb/haskell-tools.nvim/archive/v10.0.0.zip";
    sha256 = "0r2h42d7fsf08cl7lkp3wm0qj22r4vd68l33q7lr9jzsw8bls2pk";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/mrcjkb/haskell-tools.nvim";
    license.fullName = "GPL-2.0-only";
    description = " 🦥 Supercharge your Haskell experience in neovim!";
  };
}
