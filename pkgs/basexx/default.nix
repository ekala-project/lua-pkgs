{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "basexx";
  version = "0.4.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/basexx-0.4.1-1.rockspec";
      sha256 = "0kmydxm2wywl18cgj303apsx7hnfd68a9hx9yhq10fj7yfcxzv5f";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/aiq/basexx/archive/v0.4.1.tar.gz";
    sha256 = "1rnz6xixxqwy0q6y2hi14rfid4w47h69gfi0rnlq24fz8q2b0qpz";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/aiq/basexx";
    license.fullName = "MIT";
    description = "A base2, base16, base32, base64 and base85 library for Lua";
  };
}
