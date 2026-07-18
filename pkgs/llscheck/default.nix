{
  ansicolors,
  argparse,
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lua-cjson,
  luaOlder,
  luafilesystem,
  penlight,
}:
buildLuarocksPackage {
  pname = "llscheck";
  version = "0.8.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/llscheck-0.8.0-1.rockspec";
      sha256 = "15x22g2l5sih07yrcrapmcmmanrpq0ljdm34y928p8p6hg1034ab";
    }).outPath;
  src = fetchFromGitHub {
    owner = "jeffzi";
    repo = "llscheck";
    tag = "v0.8.0";
    hash = "sha256-edUS6EQLiU4Slob2PagmPE5h7Co+XNRYb3fNeC4COsI=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    ansicolors
    argparse
    lua-cjson
    luafilesystem
    penlight
  ];

  meta = {
    homepage = "https://github.com/jeffzi/llscheck";
    license.fullName = "MIT";
    description = "Human-friendly Lua code analysis powered by Lua Language Server";
  };
}
