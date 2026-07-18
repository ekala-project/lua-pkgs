{
  buildLuaPackage,
  fetchFromGitHub,
  lib,
  lua-resty-lrucache,
}:

buildLuaPackage rec {
  pname = "lua-resty-core";
  version = "0.1.32";

  src = fetchFromGitHub {
    owner = "openresty";
    repo = "lua-resty-core";
    rev = "v${version}";
    sha256 = "sha256-ba/ahIl8BDfyXIbaN6zVCh3UwY6JbAqqZEpXktOfeYo=";
  };

  propagatedBuildInputs = [ lua-resty-lrucache ];

  meta = {
    description = "New FFI-based API for lua-nginx-module";
    homepage = "https://github.com/openresty/lua-resty-core";
    license = lib.licenses.bsd3;
  };
}
