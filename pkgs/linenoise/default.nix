{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "linenoise";
  version = "0.9-1";

  src = fetchurl {
    url = "https://github.com/hoelzro/lua-linenoise/archive/0.9.tar.gz";
    sha256 = "177h6gbq89arwiwxah9943i8hl5gvd9wivnd1nhmdl7d8x0dn76c";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/hoelzro/lua-linenoise";
    license.fullName = "MIT/X11";
    description = "A binding for the linenoise command line library";
  };
}
