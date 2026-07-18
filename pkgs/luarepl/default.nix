{
  buildLuarocksPackage,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luarepl";
  version = "0.10-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luarepl-0.10-1.rockspec";
      sha256 = "12zdljfs4wg55mj7a38iwg7p5i1pmc934v9qlpi61sw4brp6x8d3";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/hoelzro/lua-repl/archive/0.10.tar.gz";
    sha256 = "0wv37h9w6y5pgr39m7yxbf8imkwvaila6rnwjcp0xsxl5c1rzfjm";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/hoelzro/lua-repl";
    license.fullName = "MIT/X11";
    description = "A reusable REPL component for Lua, written in Lua";
  };
}
