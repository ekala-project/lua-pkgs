{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luadbi";
  version = "0.7.5-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luadbi-0.7.5-1.rockspec";
      sha256 = "1xd4jkqd74zqcpql4kyqlv2n1q4k4bvj2l59nz0fmqbmmlmfk0fw";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mwild1";
    repo = "luadbi";
    tag = "v0.7.5";
    hash = "sha256-KShn2FLRYf7oc0+jce2JIUePx+eRFeCq+K9EFXz5tU8=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  meta = {
    homepage = "https://github.com/mwild1/luadbi";
    license.fullName = "MIT/X11";
    description = "Database abstraction layer";
  };
}
