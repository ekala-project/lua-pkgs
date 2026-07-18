{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lrexlib-posix";
  version = "2.9.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lrexlib-posix-2.9.3-1.rockspec";
      sha256 = "0s8w35x3jvhjn4znram93dj4kck95sv4zrlqcs6mqa4q70d5rl27";
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
    description = "Regular expression library binding (POSIX flavour).";
  };
}
