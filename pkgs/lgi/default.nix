{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lgi";
  version = "0.9.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lgi-0.9.2-1.rockspec";
      sha256 = "1gqi07m4bs7xibsy4vx8qgyp3yb1wnh0gdq1cpwqzv35y6hn5ds3";
    }).outPath;
  src = fetchFromGitHub {
    owner = "pavouk";
    repo = "lgi";
    tag = "0.9.2";
    hash = "sha256-UpamUbvqzF0JKV3J0wIiJlV6iedwe823vD0EIm3zKw8=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://github.com/pavouk/lgi";
    license.fullName = "MIT/X11";
    description = "Lua bindings to GObject libraries";
  };
}
