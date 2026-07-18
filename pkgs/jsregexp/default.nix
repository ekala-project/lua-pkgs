{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "jsregexp";
  version = "0.0.7-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/jsregexp-0.0.7-2.rockspec";
      sha256 = "048gaxgm45hvqz8x2sp3bjii2fgimwafccnwvf92crlj3r6cys6k";
    }).outPath;
  src = fetchFromGitHub {
    owner = "kmarius";
    repo = "jsregexp";
    tag = "v0.0.7";
    hash = "sha256-aXRGmo6w7jgKlR2BwKhbFGHC0mOTwHfYsh+lvqNuFtQ=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/kmarius/jsregexp";
    license.fullName = "MIT";
    description = "javascript (ECMA19) regular expressions for lua";
  };
}
