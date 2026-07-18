{
  lib,
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  fidget-nvim,
  luaOlder,
  mimetypes,
  nvim-nio,
  tree-sitter-http,
  xml2lua,
}:
buildLuarocksPackage {
  pname = "rest.nvim";
  version = "3.13.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rest.nvim-3.13.0-1.rockspec";
      sha256 = "1ig9589pb0y59jvlw97nxgcmij9kcjbc7l1aag99m40v823kncil";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/rest-nvim/rest.nvim/archive/v3.13.0.zip";
    sha256 = "18mmif73l13hbzhfvnvdky78jlv2j059cqyvxkb6bcqwcyqx7jaj";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    fidget-nvim
    mimetypes
    nvim-nio
    tree-sitter-http
    xml2lua
  ];

  meta = {
    homepage = "https://github.com/rest-nvim/rest.nvim";
    license = lib.licenses.gpl3Only;
    description = "A very fast, powerful, extensible and asynchronous Neovim HTTP client written in Lua.";
  };
}
