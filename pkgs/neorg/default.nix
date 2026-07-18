{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  lua-utils-nvim,
  luaOlder,
  nui-nvim,
  nvim-nio,
  pathlib-nvim,
  tree-sitter-norg,
  tree-sitter-norg-meta,
}:
buildLuarocksPackage {
  pname = "neorg";
  version = "9.6.4-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/neorg-9.6.4-1.rockspec";
      sha256 = "11k7qwr7430wk3j5kf7isn3d9i4y0drmq6d0dwdx62s4cy9c3pvm";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-neorg/neorg/archive/1f14d72aad7165eac307a2a2f6be0fb97a04b3c2.zip";
    sha256 = "0l7hc1w4j00csv8i6dgbdhx0jcf0017b7hhs8gcldvsyka50xkx5";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    lua-utils-nvim
    nui-nvim
    nvim-nio
    pathlib-nvim
    tree-sitter-norg
    tree-sitter-norg-meta
  ];

  meta = {
    homepage = "https://github.com/nvim-neorg/neorg";
    license = lib.licenses.gpl3Only;
    description = "Modernity meets insane extensibility. The future of organizing your life in Neovim.";
  };
}
