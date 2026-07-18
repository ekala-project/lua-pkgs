{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "loadkit";
  version = "1.1.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/loadkit-1.1.0-1.rockspec";
      sha256 = "08fx0xh90r2zvjlfjkyrnw2p95xk1a0qgvlnq4siwdb2mm6fq12l";
    }).outPath;
  src = fetchFromGitHub {
    owner = "leafo";
    repo = "loadkit";
    tag = "v1.1.0";
    hash = "sha256-fw+aoP9+yDpme4qXupE07cV1QGZjb2aU7IOHapG+ihU=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/leafo/loadkit";
    license.fullName = "MIT";
    description = "Loadkit allows you to load arbitrary files within the Lua package path";
  };
}
