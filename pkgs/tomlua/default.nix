{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "tomlua";
  version = "1.2.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tomlua-1.2.3-1.rockspec";
      sha256 = "0aqagzxnz58nzwx7h3igycvcraxs1h7hyl47d7sbb01kcclp5jr6";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/BirdeeHub/tomlua/archive/v1.2.3.zip";
    sha256 = "04mg0m3qkr89la733rpzd8xrjq8ysrmjm7v8fid1r80cp1kbg9vf";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/BirdeeHub/tomlua";
    license.fullName = "MIT";
    description = "Speedy toml parsing for lua, implemented in C";
  };
}
