{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  tree-sitter-kulala_http,
}:
buildLuarocksPackage {
  pname = "kulala.nvim";
  version = "6.20.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/kulala.nvim-6.20.1-1.rockspec";
      sha256 = "1mpqdsc6r77wahq6brifl81bcj8gjmhh5wnc81az4nrw2d8ngrfn";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/mistweaverco/kulala.nvim/archive/v6.20.1.zip";
    sha256 = "0nadhlk8ba47z6ic8q89r6fi7q0h6z70984in1rhx2a38h5rkz27";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ tree-sitter-kulala_http ];

  meta = {
    homepage = "https://kulala.app";
    license.fullName = "MIT";
    description = "A fully-featured 🤏 HTTP/GraphQL/gRPC/Websocket-client 🐼 interface 🖥️ for Neovim ❤️, that supports the Jetbrains .http spec (with full scripting support).";
  };
}
