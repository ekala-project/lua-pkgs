{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "busted-htest";
  version = "1.0.0-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/busted-htest-1.0.0-2.rockspec";
      sha256 = "10d2pbh2rfy4ygp40h8br4w5j1z5syq5pn6knd4bbnacmswnmcdl";
    }).outPath;
  src = fetchFromGitHub {
    owner = "hishamhm";
    repo = "busted-htest";
    tag = "1.0.0";
    hash = "sha256-tGAQUSeDt+OV/TBAJo/JFdyeBRRZaIQEJG+SKcCaQhs=";
  };

  meta = {
    homepage = "https://github.com/hishamhm/busted-htest";
    license.fullName = "MIT";
    description = "A pretty output handler for Busted";
  };
}
