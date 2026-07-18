{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luaffi";
  version = "scm-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luaffi-scm-1.rockspec";
      sha256 = "1nia0g4n1yv1sbv5np572y8yfai56a8bnscir807s5kj5bs0xhxm";
    }).outPath;
  src = fetchFromGitHub {
    owner = "facebook";
    repo = "luaffifb";
    rev = "a1cb731b08c91643b0665935eb5622b3d621211b";
    hash = "sha256-wRjAtEEy8KSlIoi/IIutL73Vbm1r+zKs26dEP7gzR1o=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/facebook/luaffifb";
    license.fullName = "BSD";
    description = "FFI library for calling C functions from lua";
  };
}
