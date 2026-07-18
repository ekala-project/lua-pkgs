{
  buildLuarocksPackage,
  fetchFromGitHub,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luabitop";
  version = "1.0.2-3";

  src = fetchFromGitHub {
    owner = "teto";
    repo = "luabitop";
    rev = "96f0a3d73ae5183d0a81bc2f29326eaa06becbfd";
    hash = "sha256-PrM8ncb3TaqgVhFdRa+rUsJ5WuIzS4/DRqVqj8tCaeg=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.3";

  meta = {
    homepage = "http://bitop.luajit.org/";
    license.fullName = "MIT/X license";
    description = "Lua Bit Operations Module";
  };
}
