{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "enet";
  version = "1.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/enet-1.2-1.rockspec";
      sha256 = "0jf0qxf3lsrmc1dww7b7i6srqp2cy8caqv9f1rbva7f6rnppxzra";
    }).outPath;
  src = fetchFromGitHub {
    owner = "leafo";
    repo = "lua-enet";
    tag = "v1.2";
    hash = "sha256-GomfJAPbR+y469LuaNPrkab0Wd3xAsAhT4uqbDo8BUA=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://leafo.net/lua-enet";
    license.fullName = "MIT";
    description = "A library for doing network communication in Lua";
  };
}
