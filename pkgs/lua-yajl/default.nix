{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-yajl";
  version = "2.1-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-yajl-2.1-0.rockspec";
      sha256 = "02jlgd4583p3q4w6hjgmdfkasxhamaj58byyrbmnch0qii61in9r";
    }).outPath;
  src = fetchFromGitHub {
    owner = "brimworks";
    repo = "lua-yajl";
    tag = "v2.1";
    hash = "sha256-zHBNedJkGEm47HpbeJvcm6JNUUfA1OunLHPJulR8rF8=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://github.com/brimworks/lua-yajl";
    license.fullName = "MIT/X11";
    description = "Integrate the yajl JSON library with Lua.";
  };
}
