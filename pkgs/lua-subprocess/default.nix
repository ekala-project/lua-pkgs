{
  buildLuarocksPackage,
  fetchFromGitHub,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "subprocess";
  version = "scm-1";

  src = fetchFromGitHub {
    owner = "0x0ade";
    repo = "lua-subprocess";
    rev = "bfa8e97da774141f301cfd1106dca53a30a4de54";
    hash = "sha256-4LiYWB3PAQ/s33Yj/gwC+Ef1vGe5FedWexeCBVSDIV0=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/xlq/lua-subprocess";
    license.fullName = "MIT";
    description = "A Lua module written in C that allows you to create child processes and communicate with them.";
  };
}
