{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "lua_cliargs";
  version = "3.0.2-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/lua_cliargs-3.0.2-1.rockspec";
    sha256 = "1gp3n9ipaqdk59ilqx1ci5faxmx4dh9sgg3279jb8yfa7wg5b8pf";
  }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "lua_cliargs";
    tag = "v3.0.2";
    hash = "sha256-wL3qBQ8Lu3q8DK2Kaeo1dgzIHd8evaxFYJg47CcQiSg=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/lunarmodules/lua_cliargs";
    description = "A command-line argument parsing module for Lua";
    license.fullName = "MIT";
  };
}
