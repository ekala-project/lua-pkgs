{
  stdenv,
  fetchFromGitHub,
  lua,
  lib,
  toLuaModule,
}:

toLuaModule (
  stdenv.mkDerivation {
    pname = "awesome-wm-widgets";
    version = "0-unstable-2024-02-15";

    src = fetchFromGitHub {
      owner = "streetturtle";
      repo = "awesome-wm-widgets";
      rev = "2a27e625056c50b40b1519eed623da253d36cc27";
      hash = "sha256-qz/kUIpuhWwTLbwbaES32wGKe4D2hfz90dnq+mrHrj0=";
    };

    propagatedBuildInputs = [ lua ];

    installPhase = ''
      runHook preInstall

      target=$out/lib/lua/${lua.luaversion}/awesome-wm-widgets
      mkdir -p $target
      cp -r $src/* $target

      runHook postInstall
    '';

    meta = {
      description = "Widgets for Awesome window manager";
      homepage = "https://github.com/streetturtle/awesome-wm-widgets";
      license = lib.licenses.mit;
    };
  }
)
