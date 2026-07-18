{
  argparse,
  buildLuarocksPackage,
  compat53,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "tl";
  version = "0.24.8-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tl-0.24.8-1.rockspec";
      sha256 = "1m60ydmp6mn6iczg2an20ivvgn5rrz6sn0mhpnld9img3khvj7sf";
    }).outPath;
  src = fetchFromGitHub {
    owner = "teal-language";
    repo = "tl";
    tag = "v0.24.8";
    hash = "sha256-bjk/e+FuW0pSaVkRXIiYWhaNGU08Mgyvb7U7lc+8k2w=";
  };

  propagatedBuildInputs = [
    argparse
    compat53
  ];

  meta = {
    homepage = "https://github.com/teal-language/tl";
    license.fullName = "MIT";
    description = "Teal, a typed dialect of Lua";
  };
}
