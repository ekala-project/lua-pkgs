{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaOlder,
  telescope-nvim,
}:
buildLuarocksPackage {
  pname = "telescope-manix";
  version = "1.0.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/telescope-manix-1.0.3-1.rockspec";
      sha256 = "0avqlglmki244q3ffnlc358z3pn36ibcqysxrxw7h6qy1zcwm8sr";
    }).outPath;
  src = fetchzip {
    url = "https://github.com/mrcjkb/telescope-manix/archive/1.0.3.zip";
    sha256 = "186rbdddpv8q0zcz18lnkarp0grdzxp80189n4zj2mqyzqnw0svj";
  };

  disabled = luaOlder "5.1";
  propagatedBuildInputs = [ telescope-nvim ];

  meta = {
    homepage = "https://github.com/mrcjkb/telescope-manix";
    license.fullName = "GPL-2.0-only";
    description = "A telescope.nvim extension for Manix - A fast documentation searcher for Nix";
  };
}
