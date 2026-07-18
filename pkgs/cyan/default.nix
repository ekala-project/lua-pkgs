{
  argparse,
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luafilesystem,
  luasystem,
  tl,
}:
buildLuarocksPackage {
  pname = "cyan";
  version = "0.4.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/cyan-0.4.1-1.rockspec";
      sha256 = "0m0br7fvczkaqx6zqj7ykmivw7fnizvi34cqp2mvzxn30hsa4hyw";
    }).outPath;
  src = fetchFromGitHub {
    owner = "teal-language";
    repo = "cyan";
    tag = "v0.4.1";
    hash = "sha256-jvBmOC1SMnuwgwtK6sPCDma+S5RyhItc6YjzMPULzSw=";
  };

  propagatedBuildInputs = [
    argparse
    luafilesystem
    luasystem
    tl
  ];

  meta = {
    homepage = "https://github.com/teal-language/cyan";
    license.fullName = "MIT";
    description = "A build system for the Teal language";
  };
}
