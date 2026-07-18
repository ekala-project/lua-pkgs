{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  markdown,
  penlight,
}:
buildLuarocksPackage {
  pname = "ldoc";
  version = "1.5.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/ldoc-1.5.0-1.rockspec";
      sha256 = "1c0yx9j3yqlzxpmspz7n7l1nvh2sww84zhkb1fsbg042sr8h9bxp";
    }).outPath;
  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "ldoc";
    tag = "v1.5.0";
    hash = "sha256-Me2LT+UzO8G2vHqG7DjjoCRAtLmhiJHlSEYQGkprxTw=";
  };

  propagatedBuildInputs = [
    markdown
    penlight
  ];

  meta = {
    homepage = "http://lunarmodules.github.io/ldoc";
    license.fullName = "MIT";
    description = "A Lua Documentation Tool";
  };
}
