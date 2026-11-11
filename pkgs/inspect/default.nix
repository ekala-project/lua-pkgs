{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "inspect";
  version = "3.1.3-0";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/inspect-3.1.3-0.rockspec";
      sha256 = "1iivb2jmz0pacmac2msyqwvjjx8q6py4h959m8fkigia6srg5ins";
    }).outPath;

  src = fetchurl {
    url = "https://github.com/kikito/inspect.lua/archive/v3.1.3.tar.gz";
    sha256 = "1sqylz5hmj5sbv4gi9988j6av3cb5lwkd7wiyim1h5lr7xhnlf23";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/kikito/inspect.lua";
    description = "Lua table visualizer, ideal for debugging";
    license.fullName = "MIT";
  };
}
