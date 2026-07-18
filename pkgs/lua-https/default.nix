{
  lib,
  buildLuaPackage,
  fetchFromGitHub,
  cmake,
  lua,
  curl,
}:

buildLuaPackage rec {
  pname = "lua-https";
  version = "0-unstable-2025-02-28";

  src = fetchFromGitHub {
    owner = "love2d";
    repo = "lua-https";
    rev = "e1b77046dd3cf1a9f61ddeb63cb39d47c844c089";
    hash = "sha256-NQVB5ncw2bYJEHPQtBXqCdwp6FdQ4SJ/x97fasE5z0A=";
  };

  strictDeps = true;
  __structuredAttrs = true;

  nativeBuildInputs = [ cmake ];

  buildInputs = [
    lua
    curl
  ];

  cmakeFlags = [
    (lib.cmakeFeature "CMAKE_INSTALL_PREFIX" "${placeholder "out"}/lib/lua/${lua.luaversion}")
    (lib.cmakeFeature "LIBRARY_LOADER" "linktime")
    (lib.cmakeBool "USE_CURL_BACKEND" true)
    (lib.cmakeBool "USE_OPENSSL_BACKEND" false)
    (lib.cmakeBool "USE_NSURL_BACKEND" false)
  ];

  meta = {
    homepage = "https://love2d.org/wiki/lua-https";
    description = "Simple Lua HTTPS module using native platform backends";
    license.fullName = "Zlib";
  };
}
