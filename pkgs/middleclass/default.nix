{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "middleclass";
  version = "4.1.1-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/middleclass-4.1.1-0.rockspec";
      sha256 = "10xzs48lr1dy7cx99581r956gl16px0a9gbdlfar41n19r96mhb1";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/kikito/middleclass/archive/v4.1.1.tar.gz";
    sha256 = "11ahv0b9wgqfnabv57rb7ilsvn2vcvxb1czq6faqrsqylvr5l7nh";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/kikito/middleclass";
    license.fullName = "MIT";
    description = "A simple OOP library for Lua";
  };
}
