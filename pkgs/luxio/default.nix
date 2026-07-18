{
  buildLuaPackage,
  fetchurl,
  lib,
  lua,
  pkg-config,
  stdenv,
  which,
}:

buildLuaPackage rec {
  pname = "luxio";
  version = "13";

  src = fetchurl {
    url = "https://git.gitano.org.uk/luxio.git/snapshot/luxio-luxio-${version}.tar.bz2";
    sha256 = "1hvwslc25q7k82rxk461zr1a2041nxg7sn3sw3w0y5jxf0giz2pz";
  };

  nativeBuildInputs = [
    which
    pkg-config
  ];

  postPatch = ''
    patchShebangs const-proc.lua
  '';

  preBuild = ''
    makeFlagsArray=(
      INST_LIBDIR="$out/lib/lua/${lua.luaversion}"
      INST_LUADIR="$out/share/lua/${lua.luaversion}"
      LUA_BINDIR="$out/bin"
      INSTALL=install
    );
  '';

  meta = {
    broken = stdenv.hostPlatform.isDarwin;
    description = "Lightweight UNIX I/O and POSIX binding for Lua";
    homepage = "https://www.gitano.org.uk/luxio/";
    license = lib.licenses.mit;
    platforms = lib.platforms.unix;
  };
}
