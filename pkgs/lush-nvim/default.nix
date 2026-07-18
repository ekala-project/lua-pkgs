{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lush.nvim";
  version = "scm-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lush.nvim-scm-1.rockspec";
      sha256 = "0ivir5p3mmv051pyya2hj1yrnflrv8bp38dx033i3kzfbpyg23ca";
    }).outPath;
  src = fetchFromGitHub {
    owner = "rktjmp";
    repo = "lush.nvim";
    rev = "9c60ec2279d62487d942ce095e49006af28eed6e";
    hash = "sha256-ZDC2oirfDe/GqNx6+hivvNqdLutAxlBnSk51lf1yKqM=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.4";

  meta = {
    homepage = "https://github.com/rktjmp/lush.nvim";
    license.fullName = "MIT/X11";
    description = "Define Neovim themes as a DSL in lua, with real-time feedback.";
  };
}
