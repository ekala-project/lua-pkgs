{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
}:
buildLuarocksPackage {
  pname = "psl";
  version = "0.3-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/psl-0.3-0.rockspec";
      sha256 = "1x7sc8n780k67v31bvqqxhh6ihy0k91zmp6xcxmkifr0gd008x9z";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/daurnimator/lua-psl/archive/v0.3.zip";
    sha256 = "1x9zskjn6fp9343w9314104128ik4lbk98pg6zfhl1v35107m1jx";
  };

  meta = {
    homepage = "https://github.com/daurnimator/lua-psl";
    license.fullName = "MIT";
    description = "Bindings to libpsl, a C library that handles the Public Suffix List (PSL)";
  };
}
