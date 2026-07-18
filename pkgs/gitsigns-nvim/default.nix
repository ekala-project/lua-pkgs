{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "gitsigns.nvim";
  version = "2.1.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/gitsigns.nvim-2.1.0-1.rockspec";
      sha256 = "13w10vblahrqn3cahcj6f9wz1kcna93825zy01dspl3s058920yj";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/lewis6991/gitsigns.nvim/archive/a462f416e2ce4744531c6256252dee99a7d34a83.zip";
    sha256 = "06d7pl9h1y8v7pmlyhlxs21z17pb7ikg4yipjag2i60panp6cd8i";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/lewis6991/gitsigns.nvim";
    license.fullName = "MIT";
    description = "Git integration for buffers";
  };
}
