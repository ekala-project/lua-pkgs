{
  argparse,
  buildLuarocksPackage,
  compat53,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
  luatext,
  lyaml,
}:
buildLuarocksPackage {
  pname = "sofa";
  version = "0.8.0-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/sofa-0.8.0-0.rockspec";
      sha256 = "09mjnygy8xpcp892mfqmcirjjndndvynl7bs7j4vp4r4svh17b05";
    }).outPath;
  src = fetchFromGitHub {
    owner = "f4z3r";
    repo = "sofa";
    tag = "v0.8.0";
    hash = "sha256-MWGp0kbLaXQV3ElSgPTFoVuWk4+ujktG0xh20kQPex4=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";
  propagatedBuildInputs = [
    argparse
    compat53
    luatext
    lyaml
  ];

  meta = {
    homepage = "https://github.com/f4z3r/sofa";
    license.fullName = "MIT";
    description = "A command execution engine powered by rofi.";
  };
}
