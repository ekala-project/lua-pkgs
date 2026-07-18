{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-resty-http";
  version = "0.17.2-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-resty-http-0.17.2-0.rockspec";
      sha256 = "10swbq779d1q794d17269v0ln26hblsk7kvxj9s60rx71skzql6s";
    }).outPath;
  src = fetchFromGitHub {
    owner = "ledgetech";
    repo = "lua-resty-http";
    tag = "v0.17.2";
    hash = "sha256-Ph3PpzQYKYMvPvjYwx4TeZ9RYoryMsO6mLpkAq/qlHY=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/ledgetech/lua-resty-http";
    license.fullName = "BSD-2-Clause";
    description = "Lua HTTP client cosocket driver for OpenResty / ngx_lua.";
  };
}
