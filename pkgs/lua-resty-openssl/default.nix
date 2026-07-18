{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "lua-resty-openssl";
  version = "1.8.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-resty-openssl-1.8.0-1.rockspec";
      sha256 = "1x6hbk8xcwaaa11wcs48fjpj1bipz2a3h8lswnzl3l25llv1gsib";
    }).outPath;
  src = fetchFromGitHub {
    owner = "fffonion";
    repo = "lua-resty-openssl";
    tag = "1.8.0";
    hash = "sha256-oafU+pwTxbPHrci0pEWdZNHu0eqEluEDF5M6ojx7Xeg=";
  };

  meta = {
    homepage = "https://github.com/fffonion/lua-resty-openssl";
    license.fullName = "BSD";
    description = "No summary";
  };
}
