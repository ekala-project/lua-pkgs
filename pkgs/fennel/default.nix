{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "fennel";
  version = "1.6.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/fennel-1.6.1-1.rockspec";
      sha256 = "1r6sn77f321k7i4ch4n02k0l1q0dlpdgifchpxzknwknir1bvmnk";
    }).outPath;
  src = fetchFromGitHub {
    owner = "bakpakin";
    repo = "Fennel";
    tag = "1.6.1";
    hash = "sha256-MLXLkRKlxqvEOogM5I4uHxnlRLjK8Pbeq9b1+kAgqFg=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://fennel-lang.org";
    license.fullName = "MIT";
    description = "A lisp that compiles to Lua";
  };
}
