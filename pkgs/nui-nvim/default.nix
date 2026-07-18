{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "nui.nvim";
  version = "0.4.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/nui.nvim-0.4.0-1.rockspec";
      sha256 = "0bs87acbr7ih5ln9c5a394fsmg32afw9g3w5l9ji5hmxfbvj6prf";
    }).outPath;
  src = fetchFromGitHub {
    owner = "MunifTanjim";
    repo = "nui.nvim";
    tag = "0.4.0";
    hash = "sha256-SJc9nfV6cnBKYwRWsv0iHy+RbET8frNV85reICf+pt8=";
  };

  meta = {
    homepage = "https://github.com/MunifTanjim/nui.nvim";
    license.fullName = "MIT";
    description = "UI Component Library for Neovim.";
  };
}
