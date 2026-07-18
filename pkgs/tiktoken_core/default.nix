{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
  luarocks-build-rust-mlua,
}:

buildLuarocksPackage {
  pname = "tiktoken_core";
  version = "0.2.5-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/tiktoken_core-0.2.5-1.rockspec";
    sha256 = "17bii1zxxkff0wwsgap4ni1k6ypbrbq5vfs7l34m0n78imx7c2l1";
  }).outPath;

  src = fetchFromGitHub {
    owner = "gptlang";
    repo = "lua-tiktoken";
    tag = "v0.2.5";
    hash = "sha256-V3dpFS590QkJQRIAeEgxakvoOGrilolWHutKn9zlOsg=";
  };

  disabled = luaOlder "5.1";

  nativeBuildInputs = [ luarocks-build-rust-mlua ];
  propagatedBuildInputs = [ luarocks-build-rust-mlua ];

  meta = {
    homepage = "https://github.com/gptlang/lua-tiktoken";
    description = "An experimental port of OpenAI's Tokenizer to lua";
    license.fullName = "MIT";
  };
}
