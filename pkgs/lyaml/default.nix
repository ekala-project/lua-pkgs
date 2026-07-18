{
  buildLuarocksPackage,
  fetchurl,
  fetchzip,
  luaAtLeast,
  luaOlder,
  libyaml,
}:
buildLuarocksPackage {
  pname = "lyaml";
  version = "6.2.8-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/lyaml-6.2.8-1.rockspec";
      sha256 = "0d0h70kjl5fkq589y1sx8qy8as002dhcf88pf60pghvch002ryi1";
    }).outPath;
  src = fetchzip {
    url = "http://github.com/gvvaughan/lyaml/archive/v6.2.8.zip";
    sha256 = "0r3jjsd8x2fs1aanki0s1mvpznl16f32c1qfgmicy0icgy5xfch0";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";

  buildInputs = [ libyaml ];

  meta = {
    homepage = "http://github.com/gvvaughan/lyaml";
    license.fullName = "MIT/X11";
    description = "libYAML binding for Lua";
  };
}
