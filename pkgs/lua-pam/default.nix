{
  buildLuaPackage,
  fetchFromGitHub,
  lib,
  linux-pam,
  lua,
  luaAtLeast,
  isLuaJIT,
  openpam,
  stdenv,
}:

buildLuaPackage {
  pname = "lua-pam";
  version = "unstable-2015-07-03";

  src = fetchFromGitHub {
    owner = "devurandom";
    repo = "lua-pam";
    rev = "3818ee6346a976669d74a5cbc2a83ad2585c5953";
    hash = "sha256-YlMZ5mM9Ij/9yRmgA0X1ahYVZMUx8Igj5OBvAMskqTg=";
    fetchSubmodules = true;
  };

  # The makefile tries to link to `-llua<luaversion>`
  LUA_LIBS = "-llua";

  buildInputs =
    lib.optionals stdenv.hostPlatform.isLinux [ linux-pam ]
    ++ lib.optionals stdenv.hostPlatform.isDarwin [ openpam ];

  installPhase = ''
    runHook preInstall

    install -Dm755 pam.so $out/lib/lua/${lua.luaversion}/pam.so

    runHook postInstall
  '';

  meta = {
    # The package does not build with lua 5.4 or luaJIT
    broken = luaAtLeast "5.4" || isLuaJIT;
    description = "Lua module for PAM authentication";
    homepage = "https://github.com/devurandom/lua-pam";
    license = lib.licenses.mit;
  };
}
