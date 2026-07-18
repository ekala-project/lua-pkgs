{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lpeg,
}:
buildLuarocksPackage {
  pname = "cosmo";
  version = "16.06.04-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/cosmo-16.06.04-1.rockspec";
      sha256 = "0ipv1hrlhvaz1myz6qxabq7b7kb3bz456cya3r292487a3g9h9pb";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mascarenhas";
    repo = "cosmo";
    tag = "v16.06.04";
    hash = "sha256-mJE5GkDnfZ3qAQyyyKj+aXOtlITeYs8lerGJSTzU/Tk=";
  };

  propagatedBuildInputs = [ lpeg ];

  meta = {
    homepage = "http://cosmo.luaforge.net";
    license.fullName = "MIT/X11";
    description = "Safe templates for Lua";
  };
}
