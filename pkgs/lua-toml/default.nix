{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lua-toml";
  version = "2.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lua-toml-2.0-1.rockspec";
      sha256 = "0zd3hrj1ifq89rjby3yn9y96vk20ablljvqdap981navzlbb7zvq";
    }).outPath;
  src = fetchFromGitHub {
    owner = "jonstoler";
    repo = "lua-toml";
    tag = "v2.0.1";
    hash = "sha256-6wCo06Ulmx6HVN2bTrklPqgGiEhDZ1fUfusdS/SDdFI=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/jonstoler/lua-toml";
    license.fullName = "MIT";
    description = "toml decoder/encoder for Lua";
  };
}
