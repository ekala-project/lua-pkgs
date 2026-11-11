{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
  libevent,
}:
buildLuarocksPackage {
  pname = "luaevent";
  version = "0.4.6-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luaevent-0.4.6-1.rockspec";
      sha256 = "03zixadhx4a7nh67n0sm6sy97c8i9va1a78hibhrl7cfbqc2zc7f";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/harningt/luaevent/archive/v0.4.6.tar.gz";
    sha256 = "0pbh315d3p7hxgzmbhphkcldxv2dadbka96131b8j5914nxvl4nx";
  };

  disabled = luaOlder "5.1";

  externalDeps = [
    {
      name = "EVENT";
      dep = libevent;
    }
  ];

  meta = {
    homepage = "https://github.com/harningt/luaevent";
    license.fullName = "MIT";
    description = "libevent binding for Lua";
  };
}
