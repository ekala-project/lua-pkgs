{
  buildLuarocksPackage,
  dkjson,
  fetchFromGitHub,
  fetchurl,
  inspect,
  lpeglabel,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-lsp";
  version = "0.1.0-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-lsp-0.1.0-2.rockspec";
      sha256 = "19jsz00qlgbyims6cg8i40la7v8kr7zsxrrr3dg0kdg0i36xqs6c";
    }).outPath;
  src = fetchFromGitHub {
    owner = "Alloyed";
    repo = "lua-lsp";
    tag = "v0.1.0";
    hash = "sha256-Fy9d6ZS0R48dUpKpgJ9jRujQna5wsE3+StJ8GQyWY54=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.4";
  propagatedBuildInputs = [
    dkjson
    inspect
    lpeglabel
  ];

  meta = {
    homepage = "https://github.com/Alloyed/lua-lsp";
    license.fullName = "MIT";
    description = "A Language Server implementation for lua, the language";
  };
}
