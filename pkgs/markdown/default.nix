{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "markdown";
  version = "0.33-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/markdown-0.33-1.rockspec";
      sha256 = "02sixijfi6av8h59kx3ngrhygjn2sx1c85c0qfy20gxiz72wi1pl";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mpeterv";
    repo = "markdown";
    tag = "0.33";
    hash = "sha256-PgRGiSwDODSyNSgeN7kNOCZwjLbGf1Qts/jrfLGYKwU=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.4";

  meta = {
    homepage = "https://github.com/mpeterv/markdown";
    license.fullName = "MIT/X11";
    description = "Markdown text-to-html markup system.";
  };
}
