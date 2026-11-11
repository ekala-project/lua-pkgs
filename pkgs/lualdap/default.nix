{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  openldap,
}:
buildLuarocksPackage {
  pname = "lualdap";
  version = "1.4.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lualdap-1.4.0-1.rockspec";
      sha256 = "0n924gxm6ccr9hjk4bi5z70vgh7g75dl7293pab41a2qcrlsj9nk";
    }).outPath;
  src = fetchFromGitHub {
    owner = "lualdap";
    repo = "lualdap";
    tag = "v1.4.0";
    hash = "sha256-u91T7RlRa87CbYXZLhrzcpVvZWsCnQObmbS86kfsAHc=";
  };

  disabled = luaOlder "5.1";

  externalDeps = [
    {
      name = "LDAP";
      dep = openldap;
    }
  ];

  meta = {
    homepage = "https://lualdap.github.io/lualdap/";
    license.fullName = "MIT";
    description = "A Lua interface to the OpenLDAP library";
  };
}
