{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-cmsgpack";
  version = "0.4.0-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-cmsgpack-0.4.0-0.rockspec";
      sha256 = "10cvr6knx3qvjcw1q9v05f2qy607mai7lbq321nx682aa0n1fzin";
    }).outPath;
  src = fetchFromGitHub {
    owner = "antirez";
    repo = "lua-cmsgpack";
    tag = "0.4.0";
    hash = "sha256-oGKX5G3uNGCJOaZpjLmIJYuq5HtdLd9xM/TlmxODCkg=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://github.com/antirez/lua-cmsgpack";
    license.fullName = "BSD-2-Clause";
    description = "MessagePack C implementation and bindings for Lua 5.1/5.2/5.3";
  };
}
