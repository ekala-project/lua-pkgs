{
  buildLuarocksPackage,
  cldr,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  luaepnf,
  penlight,
}:
buildLuarocksPackage {
  pname = "fluent";
  version = "0.2.0-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/fluent-0.2.0-0.rockspec";
      sha256 = "1x3nk8xdf923rvdijr0jx8v6w3wxxfch7ri3kxca0pw80b5bc2fa";
    }).outPath;
  src = fetchFromGitHub {
    owner = "alerque";
    repo = "fluent-lua";
    tag = "v0.2.0";
    hash = "sha256-uDJWhQ/fDD9ZbYOgPk1FDlU3A3DAZw3Ujx92BglFWoo=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    cldr
    luaepnf
    penlight
  ];

  meta = {
    homepage = "https://github.com/alerque/fluent-lua";
    license.fullName = "MIT";
    description = "Lua implementation of Project Fluent";
  };
}
