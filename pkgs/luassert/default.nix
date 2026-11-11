{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
  say,
}:

buildLuarocksPackage {
  pname = "luassert";
  version = "1.9.0-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luassert-1.9.0-1.rockspec";
      sha256 = "1bkzr03190p33lprgy51nl84aq082fyc3f7s3wkk7zlay4byycxd";
    }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "luassert";
    tag = "v1.9.0";
    hash = "sha256-jjdB95Vr5iVsh5T7E84WwZMW6/5H2k2R/ny2VBs2l3I=";
  };

  disabled = luaOlder "5.1";

  propagatedBuildInputs = [ say ];

  meta = {
    homepage = "https://lunarmodules.github.io/busted/";
    description = "Lua assertions extension";
    license.fullName = "MIT";
  };
}
