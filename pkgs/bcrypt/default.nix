{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "bcrypt";
  version = "2.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/bcrypt-2.3-1.rockspec";
      sha256 = "1zjy7sflyd50jvp603hmw0sg3rw5xyray0spzv5x5ky9hxivcdrf";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mikejsavage";
    repo = "lua-bcrypt";
    tag = "v2.3-1";
    hash = "sha256-wd9AbzfD3j9fyTq3toscitPsTEE49YoeSstwfO+3QGo=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://github.com/mikejsavage/lua-bcrypt";
    license.fullName = "ISC";
    description = "A Lua wrapper for bcrypt";
  };
}
