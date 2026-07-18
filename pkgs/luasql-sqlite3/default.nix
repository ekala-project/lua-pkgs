{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  sqlite,
}:
buildLuarocksPackage {
  pname = "luasql-sqlite3";
  version = "2.8.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luasql-sqlite3-2.8.0-1.rockspec";
      sha256 = "1zqcs211idnji4fzyh5g6yn4ca13z690fx0i84gmbibvi5w9rqnl";
    }).outPath;
  src = fetchFromGitHub {
    owner = "lunarmodules";
    repo = "luasql";
    tag = "2.8.0";
    hash = "sha256-7FQa62eGe+bGkDF9+yte0JMcONPjoy5Zn5nohJG1KLA=";
  };

  disabled = luaOlder "5.1";

  externalDeps = [
    { name = "SQLITE"; dep = sqlite; }
  ];

  meta = {
    homepage = "https://lunarmodules.github.io/luasql/";
    license.fullName = "MIT/X11";
    description = "Database connectivity for Lua (SQLite3 driver)";
  };
}
