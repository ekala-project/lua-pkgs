{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lualine.nvim";
  version = "scm-5";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lualine.nvim-scm-5.rockspec";
      sha256 = "02sll9l2j03h5wv5mlm1wwqijhs9a8sgn5k4mi21f58si1s7ycda";
    }).outPath;
  src = fetchFromGitHub {
    owner = "nvim-lualine";
    repo = "lualine.nvim";
    rev = "221ce6b2d999187044529f49da6554a92f740a96";
    hash = "sha256-6PjGu30Ed4/e/HQ3mIFQuUOxcCiti/71jjlMsjN7EoA=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/nvim-lualine/lualine.nvim";
    license.fullName = "MIT";
    description = "A blazing fast and easy to configure neovim statusline plugin written in pure lua.";
  };
}
