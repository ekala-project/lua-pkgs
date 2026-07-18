{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
}:
buildLuarocksPackage {
  pname = "mega.logging";
  version = "1.1.6-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/mega.logging-1.1.6-1.rockspec";
      sha256 = "1va6vl4iqnc3ip2ws1ff65xavw1m6wgdrsal1gvqnjn0gh20vxbg";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/ColinKennedy/mega.logging/archive/v1.1.6.zip";
    sha256 = "0sy7f42rbdanz9bi0kq6vzllykqcrp04bp7b5k3cqpml5ckywpl5";
  };

  meta = {
    homepage = "https://github.com/ColinKennedy/mega.logging";
    license.fullName = "MIT";
    description = "A Neovim plugin for logging to Neovim or to disk";
  };
}
