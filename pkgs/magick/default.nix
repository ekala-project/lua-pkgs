{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lua,
}:
buildLuarocksPackage {
  pname = "magick";
  version = "1.6.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/magick-1.6.0-1.rockspec";
      sha256 = "1pg150xsxnqvlhxpiy17s9hm4dkc84v46mlwi9rhriynqz8qks9w";
    }).outPath;
  src = fetchFromGitHub {
    owner = "leafo";
    repo = "magick";
    tag = "v1.6.0";
    hash = "sha256-gda+vLrWyMQ553jVCIRl1qYTS/rXsGhxrBsrJyI8EN4=";
  };

  disabled = lua.luaversion != "5.1";

  meta = {
    homepage = "https://github.com/leafo/magick.git";
    license.fullName = "MIT";
    description = "Lua bindings to ImageMagick & GraphicsMagick for LuaJIT using FFI";
  };
}
