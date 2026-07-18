{
  buildLuarocksPackage,
  fetchFromGitHub,
  luaAtLeast,
  luaOlder,
  luassert,
}:
buildLuarocksPackage {
  pname = "plenary.nvim";
  version = "scm-1";

  src = fetchFromGitHub {
    owner = "nvim-lua";
    repo = "plenary.nvim";
    rev = "74b06c6c75e4eeb3108ec01852001636d85a932b";
    hash = "sha256-nkfETDkPiE+Kd2BWYZijgUp9bP8RgFwRmvqJz2BMuq4=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.4";
  propagatedBuildInputs = [ luassert ];

  meta = {
    homepage = "http://github.com/nvim-lua/plenary.nvim";
    license.fullName = "MIT/X11";
    description = "lua functions you don't want to write ";
  };
}
