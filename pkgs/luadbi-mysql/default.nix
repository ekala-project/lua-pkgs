{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
  luadbi,
}:
buildLuarocksPackage {
  pname = "luadbi-mysql";
  version = "0.7.5-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luadbi-mysql-0.7.5-1.rockspec";
      sha256 = "1bb89d56aplz7m58g6cmscd2xgpxm38f2m72yabq5n0vg1bm2ypn";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mwild1";
    repo = "luadbi";
    tag = "v0.7.5";
    hash = "sha256-KShn2FLRYf7oc0+jce2JIUePx+eRFeCq+K9EFXz5tU8=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";
  propagatedBuildInputs = [ luadbi ];

  meta = {
    homepage = "https://github.com/mwild1/luadbi";
    license.fullName = "MIT/X11";
    description = "Database abstraction layer";
  };
}
