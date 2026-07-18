{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "xml2lua";
  version = "1.6-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/xml2lua-1.6-2.rockspec";
      sha256 = "1fh57kv95a18q4869hmr4fbzbnlmq5z83mkkixvwzg3szf9kvfcn";
    }).outPath;
  src = fetchFromGitHub {
    owner = "manoelcampos";
    repo = "xml2lua";
    tag = "v1.6-2";
    hash = "sha256-4il5mmRLtuyCJ2Nm1tKv2hXk7rmiq7Fppx9LMbjkne0=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://manoelcampos.github.io/xml2lua/";
    license.fullName = "MIT";
    description = "An XML Parser written entirely in Lua that works for Lua 5.1+";
  };
}
