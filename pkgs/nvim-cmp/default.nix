{
  buildLuarocksPackage,
  fetchFromGitHub,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "nvim-cmp";
  version = "scm-1";

  src = fetchFromGitHub {
    owner = "hrsh7th";
    repo = "nvim-cmp";
    rev = "a1d504892f2bc56c2e79b65c6faded2fd21f3eca";
    hash = "sha256-uzfM8DLRKshESsYmUAbSfXtos9COWpe/fVkxNJPIUFw=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.4";

  meta = {
    homepage = "https://github.com/hrsh7th/nvim-cmp";
    license.fullName = "MIT";
    description = "A completion plugin for neovim";
  };
}
