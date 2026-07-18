{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luarocks-build-treesitter-parser,
}:
buildLuarocksPackage {
  pname = "tree-sitter-kulala_http";
  version = "0.2.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tree-sitter-kulala_http-0.2.1-1.rockspec";
      sha256 = "05zrx3sqjdyibfdlm0ycf02s0vpzbaq47gwamg9bizjd5mhhyv22";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/mistweaverco/tree-sitter-kulala-http/archive/v0.2.1.zip";
    sha256 = "1xl2qjfdqj13jmqzvh90i9djlqf675br42z6jm3cfkmj14riid1s";
  };

  nativeBuildInputs = [ luarocks-build-treesitter-parser ];

  meta = {
    homepage = "https://kulala.app";
    license.fullName = "MIT";
    description = "Tree-sitter grammar for http (kulala-flavour).";
  };
}
