{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
  dkjson,
  lua-term,
  lua_cliargs,
  luassert,
  luasystem,
  mediator_lua,
  penlight,
  say,
}:

buildLuarocksPackage {
  pname = "busted";
  version = "2.3.0-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/busted-2.3.0-1.rockspec";
    sha256 = "1df41k03r0fy8l62dqywqjlxwmjhifk2krqq675w1cra28z8hb14";
  }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "busted";
    tag = "v2.3.0";
    hash = "sha256-ZSfnbsDiaIo/abVpwb/LV5Ktp5wFSZQNO0OdbnjqVSs=";
  };

  disabled = luaOlder "5.1";

  propagatedBuildInputs = [
    dkjson
    lua-term
    lua_cliargs
    luassert
    luasystem
    mediator_lua
    penlight
    say
  ];

  meta = {
    homepage = "https://lunarmodules.github.io/busted/";
    description = "Elegant Lua unit testing";
    license.fullName = "MIT";
  };
}
