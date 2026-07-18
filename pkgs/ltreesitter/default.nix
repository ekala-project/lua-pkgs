{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "ltreesitter";
  version = "0.3.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/ltreesitter-0.3.0-1.rockspec";
      sha256 = "1vb8jbdl36syqmd4sjqswsqy42rq59kchxk4sx0ns9va4c0kim4v";
    }).outPath;
  src = fetchFromGitHub {
    owner = "euclidianAce";
    repo = "ltreesitter";
    tag = "v0.3.0";
    hash = "sha256-tiNcc/1hnY8GWgpdlBfOTA7400916tqiAXeXJLfgtNE=";
  };

  meta = {
    homepage = "https://github.com/euclidianAce/ltreesitter";
    license.fullName = "MIT";
    description = "Treesitter bindings to Lua";
  };
}
