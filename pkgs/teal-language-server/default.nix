{
  argparse,
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  ltreesitter,
  lua-cjson,
  luafilesystem,
  lusc_luv,
  luv,
  tl,
}:
buildLuarocksPackage {
  pname = "teal-language-server";
  version = "0.1.4-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/teal-language-server-0.1.4-1.rockspec";
      sha256 = "0hgjlpyc90r3m4n4y6k8vjf5cdkv1q5b1mrfc31pssrhfwplq5hq";
    }).outPath;
  src = fetchFromGitHub {
    owner = "teal-language";
    repo = "teal-language-server";
    tag = "0.1.4";
    hash = "sha256-5SdKjE690zxLAl2Kwcy2Bk49KUrpkYBPviK+mrQnMec=";
  };

  propagatedBuildInputs = [
    argparse
    ltreesitter
    lua-cjson
    luafilesystem
    lusc_luv
    luv
    tl
  ];

  meta = {
    homepage = "https://github.com/teal-language/teal-language-server";
    license.fullName = "MIT";
    description = "A language server for the Teal language";
  };
}
