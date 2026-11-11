{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
  argparse,
  luafilesystem,
}:

buildLuarocksPackage {
  pname = "luacheck";
  version = "1.2.0-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luacheck-1.2.0-1.rockspec";
      sha256 = "0jnmrppq5hp8cwiw1daa33cdn8y2n5lsjk8vzn7ixb20ddz01m6c";
    }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "luacheck";
    tag = "v1.2.0";
    hash = "sha256-6aDXZRLq2c36dbasyVzcecQKoMvY81RIGYasdF211UY=";
  };

  disabled = luaOlder "5.1";

  propagatedBuildInputs = [
    argparse
    luafilesystem
  ];

  meta = {
    homepage = "https://github.com/lunarmodules/luacheck";
    description = "A static analyzer and a linter for Lua";
    license.fullName = "MIT";
  };
}
