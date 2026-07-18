{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  luacov,
}:
buildLuarocksPackage {
  pname = "luacov-reporter-lcov";
  version = "0.2-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luacov-reporter-lcov-0.2-0.rockspec";
      sha256 = "16w0vsv9q69zr0rw61x0p3cly755nzi83c83jk579qhxk16ja6c2";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/daurnimator/luacov-reporter-lcov/archive/v0.2.zip";
    sha256 = "0bw0wyq9zqpcjbqpnlkpxs5g1i015n2rsh0iic4vapmcy7sxlx7w";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ luacov ];

  meta = {
    homepage = "https://github.com/daurnimator/luacov-reporter-lcov";
    license.fullName = "MIT";
    description = "A luacov reporter for use with lcov";
  };
}
