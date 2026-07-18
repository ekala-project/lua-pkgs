{
  basexx,
  binaryheap,
  bit32,
  buildLuarocksPackage,
  compat53,
  cqueues,
  fetchurl,
  fetchzip,
  fifo,
  lpeg,
  lpeg_patterns,
  luaOlder,
  luaossl,
}:
buildLuarocksPackage {
  pname = "http";
  version = "0.4-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/http-0.4-0.rockspec";
      sha256 = "0kbf7ybjyj6408sdrmh1jb0ig5klfc8mqcwz6gv6rd6ywn47qifq";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/daurnimator/lua-http/archive/v0.4.zip";
    sha256 = "0252mc3mns1ni98hhcgnb3pmb53lk6nzr0jgqin0ggcavyxycqb2";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    basexx
    binaryheap
    bit32
    compat53
    cqueues
    fifo
    lpeg
    lpeg_patterns
    luaossl
  ];

  meta = {
    homepage = "https://github.com/daurnimator/lua-http";
    license.fullName = "MIT";
    description = "HTTP library for Lua";
  };
}
