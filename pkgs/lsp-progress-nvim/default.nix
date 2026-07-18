{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "lsp-progress.nvim";
  version = "2.0.0-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lsp-progress.nvim-2.0.0-1.rockspec";
      sha256 = "0ik0nambf3q76icmlcap3py30g84g1lpyysdd0f250g3gsyb993z";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/linrongbin16/lsp-progress.nvim/archive/f6d5af10563b895ff846346f57cbd4451439f4c1.zip";
    sha256 = "0jrxlk1q6r687dnq958r7s5x4djl6qcm139s8za998m8sgda397a";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://linrongbin16.github.io/lsp-progress.nvim/";
    license.fullName = "MIT";
    description = "A performant lsp progress status for Neovim.";
  };
}
