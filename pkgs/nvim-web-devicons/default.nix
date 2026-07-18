{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "nvim-web-devicons";
  version = "0.100-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/nvim-web-devicons-0.100-1.rockspec";
      sha256 = "0i87kr2q1s97q4kw85k36xhryigbv4bgy3ig56qg6z5jgkxgldza";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/nvim-tree/nvim-web-devicons/archive/v0.100.zip";
    sha256 = "0d7gzk06f6z9wq496frbaavx90mcxvdhrswqd3pcayj2872i698d";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/nvim-tree/nvim-web-devicons";
    license.fullName = "MIT";
    description = "Nerd Font icons for neovim";
  };
}
