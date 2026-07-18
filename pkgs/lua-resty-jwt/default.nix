{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lua-resty-openssl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-resty-jwt";
  version = "0.3.2-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-resty-jwt-0.3.2-1.rockspec";
      sha256 = "0r870630jzpdr41gyc1myn6zn1qpid4whx2abn0v8qaqyg0j825y";
    }).outPath;
  src = fetchFromGitHub {
    owner = "cdbattags";
    repo = "lua-resty-jwt";
    rev = "3973e402d835631de292c6e4cca52e728f02c24a";
    hash = "sha256-KJvHwN8R2t8aJS/wMdVDJh5Mld1fF3FhYAOPk2njTu8=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ lua-resty-openssl ];

  meta = {
    homepage = "https://github.com/cdbattags/lua-resty-jwt";
    license.fullName = "Apache-2.0";
    description = "JWT for ngx_lua and LuaJIT.";
  };
}
