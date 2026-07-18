{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lrexlib-gnu";
  version = "2.9.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lrexlib-gnu-2.9.3-1.rockspec";
      sha256 = "1wn69qi1qfd3d13zrgw6xq7dwqks6kwj7s398kbgacq79ibv6js3";
    }).outPath;
  src = fetchFromGitHub {
    owner = "rrthomas";
    repo = "lrexlib";
    tag = "rel-2-9-3";
    hash = "sha256-7lybrMvNk2YhXish01PQlMpRVW+qlFj03RO33zmgGp4=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/rrthomas/lrexlib";
    license.fullName = "MIT/X11";
    description = "Regular expression library binding (GNU flavour).";
  };
}
