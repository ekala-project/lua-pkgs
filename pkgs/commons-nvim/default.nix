{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "commons.nvim";
  version = "27.0.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/commons.nvim-27.0.0-1.rockspec";
      sha256 = "0gz1943nrlpi7pq4izip6fb0pkfk13h5322qhynx27m82nm129mq";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/linrongbin16/commons.nvim/archive/ac18006fe9e47cf6e53c79e333465d5a75455357.zip";
    sha256 = "10qlgly499lyhvmhj5lqv4jqzyrlx6h7h7gjbyrgzpjqyjr99m1l";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://linrongbin16.github.io/commons.nvim/";
    license.fullName = "MIT";
    description = "The commons lua library for Neovim plugin project.";
  };
}
