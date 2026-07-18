{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lpeg,
  luaOlder,
  luafilesystem,
}:
buildLuarocksPackage {
  pname = "digestif";
  version = "0.6-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/digestif-0.6-1.rockspec";
      sha256 = "0hp7r97b6ivywaxb02cbnm23gjz71mak5ag6m3hi7f3mjqxxxh8k";
    }).outPath;
  src = fetchFromGitHub {
    owner = "astoff";
    repo = "digestif";
    tag = "v0.6";
    hash = "sha256-sGwKt9suRVNrbRJlhNMHzc5r4sK/fvUc7smxmxmrn8Y=";
  };

  disabled = luaOlder "5.3";
  propagatedBuildInputs = [
    lpeg
    luafilesystem
  ];

  meta = {
    homepage = "https://github.com/astoff/digestif/";
    license.fullName = "GPLv3+ and other free licenses";
    description = "A code analyzer for TeX";
  };
}
