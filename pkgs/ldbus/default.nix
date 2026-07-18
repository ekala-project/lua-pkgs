{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "ldbus";
  version = "scm-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/ldbus-scm-0.rockspec";
      sha256 = "1c0h6fx7avzh89hl17v6simy1p4mjg8bimlsbjybks0zxznd8rbm";
    }).outPath;
  src = fetchFromGitHub {
    owner = "daurnimator";
    repo = "ldbus";
    rev = "5cc933bfad2b73674bc005ebcce771555a614792";
    hash = "sha256-MyldeKaqe7axZ423cKDE7+P2w26uRcjs0huuqlaVxQs=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  meta = {
    homepage = "https://github.com/daurnimator/ldbus";
    license.fullName = "MIT/X11";
    description = "A Lua library to access dbus.";
  };
}
