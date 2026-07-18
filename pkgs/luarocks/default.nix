{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "luarocks";
  version = "3.13.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luarocks-3.13.0-1.rockspec";
      sha256 = "1kphpdvqjr47safz3w4q8xy3pwvrpgvkq4vzypfb5wg36p75jx5l";
    }).outPath;
  src = fetchFromGitHub {
    owner = "luarocks";
    repo = "luarocks";
    tag = "v3.13.0";
    hash = "sha256-ETVoDpeFSsW7ld2z31Vog3RKsMquoxd7c8m9y7Fb1wk=";
  };

  meta = {
    homepage = "http://www.luarocks.org";
    license.fullName = "MIT";
    description = "A package manager for Lua modules.";
  };
}
