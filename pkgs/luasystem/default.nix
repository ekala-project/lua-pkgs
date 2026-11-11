{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  lib,
  libc,
  luaOlder,
  stdenv,
}:

buildLuarocksPackage {
  pname = "luasystem";
  version = "0.7.1-1";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luasystem-0.7.1-1.rockspec";
      sha256 = "10hnakzkyjqh6plks2wz2844l7rw619vfc5b3idqw9pndpw6fylz";
    }).outPath;

  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "luasystem";
    tag = "v0.7.1";
    hash = "sha256-HxOtwWyAYOxTQXm0KyJVvSNTxWOJnn4pnX0FFu4HYh4=";
  };

  disabled = luaOlder "5.1";

  buildInputs = lib.optionals stdenv.hostPlatform.isLinux [ libc.out ];

  meta = {
    homepage = "https://github.com/lunarmodules/luasystem";
    description = "Platform independent system calls for Lua";
    license.fullName = "MIT";
  };
}
