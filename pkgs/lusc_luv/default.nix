{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
  luv,
}:
buildLuarocksPackage {
  pname = "lusc_luv";
  version = "4.0.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lusc_luv-4.0.1-1.rockspec";
      sha256 = "1bgk481ljfy8q7r3w9z1x5ix0dm6v444c7mf9nahlpyrz9skxakp";
    }).outPath;
  src = fetchFromGitHub {
    owner = "svermeulen";
    repo = "lusc_luv";
    tag = "main";
    hash = "sha256-xT3so0QHtzzLRNRb7yqfaRMwkl2bt1MP1xh8BkHKqqo=";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ luv ];

  meta = {
    homepage = "https://github.com/svermeulen/lusc_luv";
    license.fullName = "MIT";
    description = "Structured Async/Concurrency for Lua using Luv";
  };
}
