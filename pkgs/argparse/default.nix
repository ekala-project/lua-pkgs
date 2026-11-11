{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "argparse";
  version = "0.7.2-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/argparse-0.7.2-1.rockspec";
      sha256 = "1az7ikzll699sbz2qxq9wkm0ncmic33dhg85zqlznbnz28vy6jza";
    }).outPath;

  src = fetchzip {
    url = "https://github.com/luarocks/argparse/archive/0.7.2.zip";
    sha256 = "0ji3hh0s2g2i5sribiib2vpy30xzfkv61m4mzwawfpgraqg03r6y";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.6";

  meta = {
    homepage = "https://github.com/luarocks/argparse";
    description = "A feature-rich command-line argument parser";
    license.fullName = "MIT";
  };
}
