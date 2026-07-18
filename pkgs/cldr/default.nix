{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  penlight,
}:
buildLuarocksPackage {
  pname = "cldr";
  version = "0.3.0-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/cldr-0.3.0-0.rockspec";
      sha256 = "1fnr8k713w21v7hc64s4w5lgcgnbphq3gm69pisc2s4wq2fkija1";
    }).outPath;
  src = fetchFromGitHub {
    owner = "alerque";
    repo = "cldr-lua";
    tag = "v0.3.0";
    hash = "sha256-5LY0YxHACtreP38biDZD97bkPuuT7an/Z1VBXEJYjkI=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ penlight ];

  meta = {
    homepage = "https://github.com/alerque/cldr-lua";
    license.fullName = "MIT/ICU";
    description = "Lua interface to Unicode CLDR data";
  };
}
