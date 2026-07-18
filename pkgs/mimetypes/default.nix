{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "mimetypes";
  version = "1.1.0-2";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/mimetypes-1.1.0-2.rockspec";
      sha256 = "1asi5dlkqml9rjh2k2iq0fy2khdlc7mq4kxp4j42c8507w9dijww";
    }).outPath;
  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "lua-mimetypes";
    tag = "v1.1.0";
    hash = "sha256-9uuhMerMqE/AtFFGNIWxGBN0BQ+FE+NgZa3g041lesE=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/lunarmodules/lua-mimetypes";
    license.fullName = "MIT/X11";
    description = "A simple library for looking up the MIME types of files.";
  };
}
