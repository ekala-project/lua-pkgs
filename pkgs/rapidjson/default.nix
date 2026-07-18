{
  buildLuarocksPackage,
  cmake,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "rapidjson";
  version = "0.7.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/rapidjson-0.7.2-1.rockspec";
      sha256 = "1g3gw1rr54jvylq7afzkqdpid3h7nlmk76hmfva8xzhcdvbcl88h";
    }).outPath;
  src = fetchFromGitHub {
    owner = "xpol";
    repo = "lua-rapidjson";
    tag = "v0.7.2";
    hash = "sha256-WdfGIgbwlMMItsasN+ZITd/iqSeHC0EVeYoUcolb1MU=";
  };

  disabled = luaOlder "5.1";
  nativeBuildInputs = [ cmake ];

  meta = {
    homepage = "https://github.com/xpol/lua-rapidjson";
    license.fullName = "MIT";
    description = "Json module based on the very fast RapidJSON.";
  };
}
