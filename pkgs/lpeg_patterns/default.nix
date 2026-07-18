{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  lpeg,
}:
buildLuarocksPackage {
  pname = "lpeg_patterns";
  version = "0.5-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lpeg_patterns-0.5-0.rockspec";
      sha256 = "1vzl3ryryc624mchclzsfl3hsrprb9q214zbi1xsjcc4ckq5qfh7";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/daurnimator/lpeg_patterns/archive/v0.5.zip";
    sha256 = "1s3c179a64r45ffkawv9dnxw4mzwkzj00nr9z2gs5haajgpjivw6";
  };

  propagatedBuildInputs = [ lpeg ];

  meta = {
    homepage = "https://github.com/daurnimator/lpeg_patterns/archive/v0.5.zip";
    license.fullName = "MIT";
    description = "a collection of LPEG patterns";
  };
}
