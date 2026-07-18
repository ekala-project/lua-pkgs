{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  mega-logging,
}:
buildLuarocksPackage {
  pname = "mega.cmdparse";
  version = "1.2.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/mega.cmdparse-1.2.1-1.rockspec";
      sha256 = "1766pqazkr3zfwaaj541m53y90n5zr0r7068hd67d9hgvd7za6sb";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/ColinKennedy/mega.cmdparse/archive/v1.2.1.zip";
    sha256 = "1bf3rf80m65jc51dlv3vcs2jhzk5ni2kr7v5rsmb31k7wk3002qb";
  };

  propagatedBuildInputs = [ mega-logging ];

  meta = {
    homepage = "https://github.com/ColinKennedy/mega.cmdparse";
    license.fullName = "MIT";
    description = "A Neovim command-mode parser. Similar to Python's argparse module";
  };
}
