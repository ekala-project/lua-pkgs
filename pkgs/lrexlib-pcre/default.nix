{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  pcre,
}:
buildLuarocksPackage {
  pname = "lrexlib-pcre";
  version = "2.9.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lrexlib-pcre-2.9.3-1.rockspec";
      sha256 = "1pwwzc12a6dl5i4i8gl5i0r8aabqfpmdfrlj0fkvj5v56v9bkw09";
    }).outPath;
  src = fetchFromGitHub {
    owner = "rrthomas";
    repo = "lrexlib";
    tag = "rel-2-9-3";
    hash = "sha256-7lybrMvNk2YhXish01PQlMpRVW+qlFj03RO33zmgGp4=";
  };

  disabled = luaOlder "5.1";

  externalDeps = [
    { name = "PCRE"; dep = pcre; }
  ];

  meta = {
    homepage = "https://github.com/rrthomas/lrexlib";
    license.fullName = "MIT/X11";
    description = "Regular expression library binding (PCRE flavour).";
  };
}
