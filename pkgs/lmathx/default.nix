{ buildLuarocksPackage, fetchurl }:
buildLuarocksPackage {
  pname = "lmathx";
  version = "20150624-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lmathx-20150624-1.rockspec";
      sha256 = "181wzsj1mxjyia43y8zwaydxahnl7a70qzcgc8jhhgic7jyi9pgv";
    }).outPath;
  src = fetchurl {
    url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.3/lmathx.tar.gz";
    sha256 = "1r0ax3lq4xx6469aqc6qlfl3jynlghzhl5j65mpdj0kyzv4nknzf";
  };

  meta = {
    homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lmathx";
    license.fullName = "Public domain";
    description = "C99 extensions for the math library";
  };
}
