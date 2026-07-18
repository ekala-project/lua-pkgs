{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
}:
buildLuarocksPackage {
  pname = "fifo";
  version = "0.2-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/fifo-0.2-0.rockspec";
      sha256 = "0vr9apmai2cyra2n573nr3dyk929gzcs4nm1096jdxcixmvh2ymq";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/daurnimator/fifo.lua/archive/0.2.zip";
    sha256 = "1800k7h5hxsvm05bjdr65djjml678lwb0661cll78z1ys2037nzn";
  };

  meta = {
    homepage = "https://github.com/daurnimator/fifo.lua";
    license.fullName = "MIT/X11";
    description = "A lua library/'class' that implements a FIFO";
  };
}
