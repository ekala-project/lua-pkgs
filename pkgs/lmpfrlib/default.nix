{
  lib,
  buildLuarocksPackage,
  fetchurl,
  luaAtLeast,
  luaOlder,
  gmp,
  mpfr,
}:
buildLuarocksPackage {
  pname = "lmpfrlib";
  version = "20170112-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lmpfrlib-20170112-2.rockspec";
      sha256 = "1x7qiwmk5b9fi87fn7yvivdsis8h9fk9r3ipqiry5ahx72vzdm7d";
    }).outPath;
  src = fetchurl {
    url = "http://www.circuitwizard.de/lmpfrlib/lmpfrlib.c";
    sha256 = "1bkfwdacj1drzqsfxf352fjppqqwi5d4j084jr9vj9dvjb31rbc1";
  };

  disabled = luaOlder "5.3" || luaAtLeast "5.5";

  externalDeps = [
    { name = "GMP"; dep = gmp; }
    { name = "MPFR"; dep = mpfr; }
  ];

  meta = {
    homepage = "http://www.circuitwizard.de/lmpfrlib/lmpfrlib.html";
    license.fullName = "LGPL";
    description = "Lua API for the GNU MPFR library";
  };
}
