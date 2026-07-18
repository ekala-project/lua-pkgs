{
  buildLuaPackage,
  fetchFromGitHub,
  lib,
}:

buildLuaPackage rec {
  pname = "lua-resty-lrucache";
  version = "0.15";

  src = fetchFromGitHub {
    owner = "openresty";
    repo = "lua-resty-lrucache";
    rev = "v${version}";
    sha256 = "sha256-G2l4Zo9Xm/m4zRfxrgzEvRE5LMO+UuX3kd7FwlCnxDA=";
  };

  meta = {
    description = "Lua-land LRU Cache based on LuaJIT FFI";
    homepage = "https://github.com/openresty/lua-resty-lrucache";
    license = lib.licenses.bsd3;
  };
}
