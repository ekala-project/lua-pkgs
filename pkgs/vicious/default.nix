{
  stdenv,
  fetchFromGitHub,
  lib,
  lua,
  toLuaModule,
}:

toLuaModule (
  stdenv.mkDerivation rec {
    pname = "vicious";
    version = "2.6.0";

    src = fetchFromGitHub {
      owner = "vicious-widgets";
      repo = "vicious";
      rev = "v${version}";
      sha256 = "sha256-VlJ2hNou2+t7eSyHmFkC2xJ92OH/uJ/ewYHkFLQjUPQ=";
    };

    propagatedBuildInputs = [ lua ];

    installPhase = ''
      mkdir -p $out/lib/lua/${lua.luaversion}/
      cp -r . $out/lib/lua/${lua.luaversion}/vicious/
      printf "package.path = '$out/lib/lua/${lua.luaversion}/?/init.lua;' ..  package.path\nreturn require((...) .. '.init')\n" > $out/lib/lua/${lua.luaversion}/vicious.lua
    '';

    meta = {
      description = "Modular widget library for the awesome window manager";
      homepage = "https://vicious.rtfd.io";
      changelog = "https://vicious.rtfd.io/en/v${version}/changelog.html";
      license = lib.licenses.gpl2Plus;
      platforms = lib.platforms.linux;
    };
  }
)
