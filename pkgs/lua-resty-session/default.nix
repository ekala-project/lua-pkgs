{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lua-ffi-zlib,
  lua-resty-openssl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-resty-session";
  version = "4.1.5-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-resty-session-4.1.5-1.rockspec";
      sha256 = "1mapndwa260pk18v4nwnmz4bncqizfn1zc8k8aj1557pc1fj5ii6";
    }).outPath;
  src = fetchFromGitHub {
    owner = "bungle";
    repo = "lua-resty-session";
    tag = "v4.1.5";
    hash = "sha256-qwXNEWU0i3PUJK5cUChkcH43HnBCz4EEVPDQQ10Je+Q=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    lua-ffi-zlib
    lua-resty-openssl
  ];

  meta = {
    homepage = "https://github.com/bungle/lua-resty-session";
    license.fullName = "BSD";
    description = "Session Library for OpenResty - Flexible and Secure";
  };
}
