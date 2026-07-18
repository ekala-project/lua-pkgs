{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "lpeg";
  version = "1.1.0-2";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/lpeg-1.1.0-2.rockspec";
    sha256 = "0g8bnsx1qkl8s1fglbdai9mznzyzf9mv5lcxjab47069b3d8caa4";
  }).outPath;

  src = fetchurl {
    url = "https://www.inf.puc-rio.br/~roberto/lpeg/lpeg-1.1.0.tar.gz";
    sha256 = "0aimsjpcpkh3kk65f0pg1z2bp6d83rn4dg6pgbx1yv14s9kms5ab";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://www.inf.puc-rio.br/~roberto/lpeg.html";
    description = "Parsing Expression Grammars For Lua";
    license.fullName = "MIT/X11";
  };
}
