{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
}:

buildLuarocksPackage {
  pname = "coxpcall";
  version = "1.17.0-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/coxpcall-1.17.0-1.rockspec";
      sha256 = "0mf0nggg4ajahy5y1q5zh2zx9rmgzw06572bxx6k8b736b8j7gca";
    }).outPath;

  src = fetchFromGitHub {
    owner = "keplerproject";
    repo = "coxpcall";
    tag = "v1_17_0";
    hash = "sha256-EW8pGI9jiGutNVNmyiCP5sIVYZe2rJQc03OrKXIOeMw=";
  };

  meta = {
    homepage = "http://keplerproject.github.io/coxpcall";
    description = "Coroutine safe xpcall and pcall";
    license.fullName = "MIT/X11";
  };
}
