{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  pcre2,
}:
buildLuarocksPackage {
  pname = "lrexlib-pcre2";
  version = "2.9.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lrexlib-pcre2-2.9.3-1.rockspec";
      sha256 = "17y1zhjb5h1bdd4rdaycrnp3xwzm06y1179ga0wpcwvg0ybwmvfn";
    }).outPath;
  src = fetchFromGitHub {
    owner = "rrthomas";
    repo = "lrexlib";
    tag = "rel-2-9-3";
    hash = "sha256-7lybrMvNk2YhXish01PQlMpRVW+qlFj03RO33zmgGp4=";
  };

  disabled = luaOlder "5.1";

  externalDeps = [
    { name = "PCRE2"; dep = pcre2; }
  ];

  meta = {
    homepage = "https://github.com/rrthomas/lrexlib";
    license.fullName = "MIT/X11";
    description = "Regular expression library binding (PCRE2 flavour).";
  };
}
