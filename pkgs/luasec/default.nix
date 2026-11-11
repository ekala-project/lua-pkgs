{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
  luasocket,
  openssl,
}:

buildLuarocksPackage {
  pname = "luasec";
  version = "1.3.2-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luasec-1.3.2-1.rockspec";
      sha256 = "09nqs60cmbq1bi70cdh7v5xjnlsm2mrxv9pmbbvczijvz184jh33";
    }).outPath;

  src = fetchFromGitHub {
    owner = "brunoos";
    repo = "luasec";
    tag = "v1.3.2";
    hash = "sha256-o3uiZQnn/ID1qAgpZAqA4R3fWWk+Ajcgx++iNu1yLWc=";
  };

  disabled = luaOlder "5.1";

  externalDeps = [
    {
      name = "OPENSSL";
      dep = openssl;
    }
  ];

  propagatedBuildInputs = [ luasocket ];

  meta = {
    homepage = "https://github.com/brunoos/luasec/wiki";
    description = "A binding for OpenSSL library to provide TLS/SSL communication over LuaSocket";
    license.fullName = "MIT";
  };
}
