{
  buildLuarocksPackage,
  busted,
  fetchFromGitHub,
  fetchurl,
  luasystem,
}:
buildLuarocksPackage {
  pname = "vusted";
  version = "2.5.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/vusted-2.5.3-1.rockspec";
      sha256 = "1n0fpr3kw0dp9qiik8k9nh3jbckl4zs7kv7mjfffs9kms85jrq3d";
    }).outPath;
  src = fetchFromGitHub {
    owner = "notomo";
    repo = "vusted";
    tag = "v2.5.3";
    hash = "sha256-b07aSgDgSNpALs5en8ZXLEd/ThLEWX/dTME8Rg1K15I=";
  };

  propagatedBuildInputs = [
    busted
    luasystem
  ];

  meta = {
    homepage = "https://github.com/notomo/vusted";
    license.fullName = "MIT";
    description = "`busted` wrapper for testing neovim plugin";
  };
}
