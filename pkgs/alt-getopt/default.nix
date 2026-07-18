{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "alt-getopt";
  version = "0.8.0-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/alt-getopt-0.8.0-2.rockspec";
      sha256 = "1x1wb351n8c9aghgrlwkjg4crriwby18drzrz3280mw9cildg11v";
    }).outPath;
  src = fetchFromGitHub {
    owner = "cheusov";
    repo = "lua-alt-getopt";
    tag = "0.8.0";
    hash = "sha256-OxtMNB8++cVQ/gQjntLUt3WYopGhYb1VbIUAZEzJB88=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/cheusov/lua-alt-getopt";
    license.fullName = "MIT/X11";
    description = "Process application arguments the same way as getopt_long";
  };
}
