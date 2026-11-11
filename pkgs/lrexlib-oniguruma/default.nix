{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  oniguruma,
}:
buildLuarocksPackage {
  pname = "lrexlib-oniguruma";
  version = "2.9.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lrexlib-oniguruma-2.9.3-1.rockspec";
      sha256 = "0zgpfnb7l018kh16xn836gwydhy0hpqzjchlbk0jhnjlzcvynidm";
    }).outPath;
  src = fetchFromGitHub {
    owner = "rrthomas";
    repo = "lrexlib";
    tag = "rel-2-9-3";
    hash = "sha256-7lybrMvNk2YhXish01PQlMpRVW+qlFj03RO33zmgGp4=";
  };

  disabled = luaOlder "5.1";

  externalDeps = [
    {
      name = "ONIG";
      dep = oniguruma;
    }
  ];

  meta = {
    homepage = "https://github.com/rrthomas/lrexlib";
    license.fullName = "MIT/X11";
    description = "Regular expression library binding (oniguruma flavour).";
  };
}
