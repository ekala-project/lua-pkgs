{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  fidget-nvim,
  fzy,
  lua,
  luarocks,
  nvim-nio,
  rtp-nvim,
  toml-edit,
}:
buildLuarocksPackage {
  pname = "rocks.nvim";
  version = "2.49.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rocks.nvim-2.49.0-1.rockspec";
      sha256 = "1krbnmx90avna2bzxvdv5zs7iakgkcm9w0dniingbhifkrkmiazr";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/lumen-oss/rocks.nvim/archive/v2.49.0.zip";
    sha256 = "13sr1alra4dlh22p6b53y6695zdv4vih3gdkvjfd7q3057ni7l20";
  };

  disabled = lua.luaversion != "5.1";
  propagatedBuildInputs = [
    fidget-nvim
    fzy
    luarocks
    nvim-nio
    rtp-nvim
    toml-edit
  ];

  meta = {
    homepage = "https://github.com/lumen-oss/rocks.nvim";
    license = lib.licenses.gpl3Only;
    description = "🌒 Neovim plugin management inspired by Cargo, powered by luarocks";
  };
}
