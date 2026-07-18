{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lua-resty-http,
  lua-resty-jwt,
  lua-resty-session,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-resty-openidc";
  version = "1.8.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-resty-openidc-1.8.0-1.rockspec";
      sha256 = "0jgajhn45nybhi7z15bg957kznzqcjzxc8nrzmgyignkwp4yi1qk";
    }).outPath;
  src = fetchFromGitHub {
    owner = "zmartzone";
    repo = "lua-resty-openidc";
    tag = "v1.8.0";
    hash = "sha256-LSkNWebMF1L1a66QszugAxcHsW5o9uxQZHWituFFgJs=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    lua-resty-http
    lua-resty-jwt
    lua-resty-session
  ];

  meta = {
    homepage = "https://github.com/zmartzone/lua-resty-openidc";
    license.fullName = "Apache-2.0";
    description = "A library for NGINX implementing the OpenID Connect Relying Party (RP) and the OAuth 2.0 Resource Server (RS) functionality";
  };
}
