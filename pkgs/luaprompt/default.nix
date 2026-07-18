{
  argparse,
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luaprompt";
  version = "0.9-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luaprompt-0.9-1.rockspec";
      sha256 = "0bh4fpfrqbg9bappnrfr6blvl3lzc99plq7jac67mhph1bjki7rk";
    }).outPath;
  src = fetchFromGitHub {
    owner = "dpapavas";
    repo = "luaprompt";
    tag = "v0.9";
    hash = "sha256-S6bzlIY1KlMK3wy01wGuRujGFgPxcNWmCaISQ87EBGs=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ argparse ];

  meta = {
    homepage = "https://github.com/dpapavas/luaprompt";
    license.fullName = "MIT/X11";
    description = "A Lua command prompt with pretty-printing and auto-completion";
  };
}
