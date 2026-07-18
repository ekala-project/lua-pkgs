{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-protobuf";
  version = "0.5.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-protobuf-0.5.3-1.rockspec";
      sha256 = "0jz3yxdf9n1zfnkywqjghn6nlfvkkv9li003kkzh7z0wzidqaljh";
    }).outPath;
  src = fetchFromGitHub {
    owner = "starwing";
    repo = "lua-protobuf";
    tag = "0.5.3";
    hash = "sha256-9vAv/Rhf9xrQnbd0nkaxGrcTRKkUSlpYRAJe2zpdIiY=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/starwing/lua-protobuf";
    license.fullName = "MIT";
    description = "protobuf data support for Lua";
  };
}
