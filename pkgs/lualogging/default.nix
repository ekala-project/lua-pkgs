{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luasocket,
}:
buildLuarocksPackage {
  pname = "lualogging";
  version = "1.8.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lualogging-1.8.2-1.rockspec";
      sha256 = "164c4xgwkv2ya8fbb22wm48ywc4gx939b574r6bgl8zqayffdqmx";
    }).outPath;
  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "lualogging";
    tag = "v1.8.2";
    hash = "sha256-RIblf2C9H6Iajzc9aqnvrK4xq8FAHq9InTO6m3aM5dc=";
  };

  propagatedBuildInputs = [ luasocket ];

  meta = {
    homepage = "https://github.com/lunarmodules/lualogging";
    license.fullName = "MIT/X11";
    description = "A simple API to use logging features";
  };
}
