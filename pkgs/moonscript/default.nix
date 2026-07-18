{
  argparse,
  buildLuarocksPackage,
  fetchFromGitHub,
  lpeg,
  luaOlder,
  luafilesystem,
}:
buildLuarocksPackage {
  pname = "moonscript";
  version = "dev-1";

  src = fetchFromGitHub {
    owner = "leafo";
    repo = "moonscript";
    rev = "402be8a6df8ff57c4183db44e0c130d14d69bf87";
    hash = "sha256-rIkq6rk5A9yYbRcFLJ9wE+PQKGvpOB+7iTDbq9T/1OM=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [
    argparse
    lpeg
    luafilesystem
  ];

  meta = {
    homepage = "http://moonscript.org";
    license.fullName = "MIT";
    description = "A programmer friendly language that compiles to Lua";
  };
}
