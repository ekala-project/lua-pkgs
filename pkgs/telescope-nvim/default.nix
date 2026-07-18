{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  lua,
  plenary-nvim,
}:
buildLuarocksPackage {
  pname = "telescope.nvim";
  version = "scm-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/telescope.nvim-scm-1.rockspec";
      sha256 = "11dy6rkgkhc7zdrrvn361rwyf702yvvkhd0wz52pr757z534fk8s";
    }).outPath;
  src = fetchFromGitHub {
    owner = "nvim-telescope";
    repo = "telescope.nvim";
    rev = "427b576c16792edad01a92b89721d923c19ad60f";
    hash = "sha256-/GycCrepwDer0UvBN/f84pJUSvNp+ZfTIUPv0psl+IQ=";
  };

  disabled = lua.luaversion != "5.1";
  propagatedBuildInputs = [ plenary-nvim ];

  meta = {
    homepage = "https://github.com/nvim-telescope/telescope.nvim";
    license.fullName = "MIT";
    description = "Find, Filter, Preview, Pick. All lua, all the time.";
  };
}
