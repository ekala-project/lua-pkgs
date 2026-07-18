{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  openssl,
}:
buildLuarocksPackage {
  pname = "luaossl";
  version = "20250929-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luaossl-20250929-0.rockspec";
      sha256 = "11m823vd8cwc3s5420lv042ny1d7hrimzx05ldy8f6rlh6m2d9xl";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/wahern/luaossl/archive/rel-20250929.zip";
    sha256 = "115a5r0n7qc9lnjxld551ag6l9rq1wawcbrfjqhz2l6krb3pbv3d";
  };

  externalDeps = [
    { name = "CRYPTO"; dep = openssl; }
    { name = "OPENSSL"; dep = openssl; }
  ];

  meta = {
    homepage = "http://25thandclement.com/~william/projects/luaossl.html";
    license.fullName = "MIT/X11";
    description = "Most comprehensive OpenSSL module in the Lua universe.";
  };
}
