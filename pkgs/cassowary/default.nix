{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  penlight,
}:
buildLuarocksPackage {
  pname = "cassowary";
  version = "2.3.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/cassowary-2.3.2-1.rockspec";
      sha256 = "0c6sflm8zpgbcdj47s3rd34h69h3nqcciaaqd1wdx5m0lwc3mii0";
    }).outPath;
  src = fetchFromGitHub {
    owner = "sile-typesetter";
    repo = "cassowary.lua";
    tag = "v2.3.2";
    hash = "sha256-wIVuf1L3g2BCM+zW4Nt1IyU6xaP4yYuzxHjVDxsgdNM=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ penlight ];

  meta = {
    homepage = "https://github.com/sile-typesetter/cassowary.lua";
    license.fullName = "Apache-2.0";
    description = "The cassowary constraint solver";
  };
}
